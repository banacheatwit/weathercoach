#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickItem>
#include <QDebug>
#include <QDateTime>

#include "controller.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QObject* rootObject = engine.rootObjects().at(0);
    Controller* controller = new Controller(nullptr, rootObject);
    engine.rootContext()->setContextProperty("controller", controller);

    controller->updateFDD();
    controller->updateWOD();

    return app.exec();
}
