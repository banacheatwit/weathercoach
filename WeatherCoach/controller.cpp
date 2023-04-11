#include "controller.h"
#include "weather_model.h"
#include <QDebug>
#include <QQmlEngine>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickItem>

Weather_Model *W_Model;

Controller::Controller(QObject *parent)
    : QObject(parent)
{

    W_Model = new Weather_Model();
    //weather = W_Model->getWeather();

}

