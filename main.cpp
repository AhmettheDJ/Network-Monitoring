#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "networkmonitor.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    // Objekt erstellen
    NetworkMonitor monitor;

    // Objekt für QML zugänglich machen
    engine.rootContext()->setContextProperty("networkMonitor", &monitor);

    engine.loadFromModule("NetworkMonitoring", "Main");

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
