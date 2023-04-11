#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <QQuickItem>
#include <QQmlApplicationEngine>

class Controller : public QObject
{
    Q_OBJECT

public:
    explicit Controller(QObject *parent = nullptr);

private:
    QString** forecast;
    QString **weather;


signals:

};

#endif // CONTROLLER_H
