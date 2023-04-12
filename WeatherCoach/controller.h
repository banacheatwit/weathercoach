#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <QQuickItem>
#include <QQmlApplicationEngine>

class Controller : public QObject
{
    Q_OBJECT

public:
    explicit Controller(QObject *parent = nullptr, QObject* rootObj = nullptr);
    Q_INVOKABLE void updateFDD();
    Q_INVOKABLE void updateWOD();

private:
    QObject* rootObject;
    QString** weather;
    QString* current;

signals:


};

#endif // CONTROLLER_H
