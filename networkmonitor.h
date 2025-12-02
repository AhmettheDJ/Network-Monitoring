#pragma once
#include <QObject>
#include <QString>

class NetworkMonitor : public QObject {
    Q_OBJECT
public:
    explicit NetworkMonitor(QObject *parent = nullptr);

    Q_INVOKABLE QString displayActiveConnections();
    Q_INVOKABLE QString pingTest(const QString &target);
    Q_INVOKABLE QString displayIpHostname();
    Q_INVOKABLE QString viewLogFile();

private:
    QString runCommand(const QString &cmd);
};
