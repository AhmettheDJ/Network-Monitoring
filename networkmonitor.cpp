#include "networkmonitor.h"
#include <QProcess>
#include <QFile>
#include <QTextStream>

NetworkMonitor::NetworkMonitor(QObject *parent)
    : QObject(parent) {}

QString NetworkMonitor::runCommand(const QString &cmd) {
    QProcess process;

#ifdef _WIN32
    // Setze UTF-8 Codepage für Windows-Konsole
    process.start("cmd.exe", QStringList() << "/c" << "chcp 65001 > nul && " + cmd);
#else
    process.start("sh", QStringList() << "-c" << cmd);
#endif

    if (!process.waitForFinished(10000)) { // 10 Sekunden Timeout
        return QString::fromUtf8("Fehler: Befehl hat zu lange gedauert oder ist fehlgeschlagen.");
    }

    // Ausgabe mit UTF-8 dekodieren
    QString output = QString::fromUtf8(process.readAllStandardOutput());
    QString error = QString::fromUtf8(process.readAllStandardError());

    if (!error.isEmpty()) {
        output += "\n--- Fehler ---\n" + error;
    }

    return output.isEmpty() ? QString::fromUtf8("Keine Ausgabe erhalten.") : output;
}

QString NetworkMonitor::displayActiveConnections() {
#ifdef _WIN32
    return runCommand("netstat -an");
#else
    return runCommand("netstat -tuln");
#endif
}

QString NetworkMonitor::pingTest(const QString &target) {
    if (target.isEmpty()) {
        return QString::fromUtf8("Fehler: Kein Ziel angegeben.");
    }

#ifdef _WIN32
    return runCommand("ping -n 4 " + target);
#else
    return runCommand("ping -c 4 " + target);
#endif
}

QString NetworkMonitor::displayIpHostname() {
#ifdef _WIN32
    QString hostname = runCommand("hostname");
    QString ipconfig = runCommand("ipconfig");
    return QString::fromUtf8("=== Hostname ===\n") + hostname +
           QString::fromUtf8("\n=== IP-Konfiguration ===\n") + ipconfig;
#else
    QString hostname = runCommand("hostname");
    QString ip = runCommand("hostname -I");
    return QString::fromUtf8("=== Hostname ===\n") + hostname +
           QString::fromUtf8("\n=== IP-Adressen ===\n") + ip;
#endif
}

QString NetworkMonitor::viewLogFile() {
    QFile file("network_log.txt");

    if (!file.exists()) {
        return QString::fromUtf8("Log-Datei existiert nicht oder ist leer.");
    }

    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        return QString::fromUtf8("Fehler: Konnte Log-Datei nicht öffnen.");
    }

    QTextStream in(&file);
    in.setEncoding(QStringConverter::Utf8); // Qt6 Methode
    QString content = in.readAll();
    file.close();

    return content.isEmpty() ? QString::fromUtf8("Log-Datei ist leer.") : content;
}
