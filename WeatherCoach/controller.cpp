#include "controller.h"
#include "weather_model.h"
#include <QDebug>
#include <QQmlEngine>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickItem>


Controller::Controller(QObject *parent, QObject* rootObj)
    : QObject(parent)
{
    rootObject = rootObj;

    Weather_Model *W_Model = new Weather_Model;
    weather = new QString*[168];
    for(int i=0; i<168; i++){
        weather[i] = new QString[12];
    }

    QEventLoop loop;
    QObject::connect(W_Model, &Weather_Model::getWeatherFinished, &loop, &QEventLoop::quit);
    W_Model->getWeather();
    loop.exec();

    weather = W_Model->getForecast();

    QObject::connect(W_Model, &Weather_Model::getCurrentWeatherFinished, &loop, &QEventLoop::quit);
    W_Model->getCurrrentWeather();
    loop.exec();

    current = W_Model->getCurrent();

}

void Controller::updateFDD(){

    QDateTime dateTime = QDateTime::currentDateTime();

    // Set time
    rootObject->findChild<QObject*>("maintime_text")->setProperty("text", dateTime.time().toString("h:mm A"));

    int hour = dateTime.time().hour();
    rootObject->findChild<QObject*>("maintemp_text")->setProperty("text", weather[hour][1]+"°F");

    int dayNum = rootObject->findChild<QObject*>("fdd_rect")->property("day").toInt();
    qDebug() << dayNum;

    for(int i=0; i<24; i++){
        for(int j=0; j<12; j++){
            QString objName = "text_"+QString::number(i)+"_"+QString::number(j);
            QObject* itemObject = rootObject->findChild<QObject*>(objName);
            if(itemObject){
                QString addition = "";
                switch(j){
                    case 1:
                    case 2:
                        addition = "°F";
                        break;
                    case 3:
                        addition = "in";
                        break;
                    case 4:
                    case 5:
                    case 7:
                    case 8:
                        addition = "%";
                        break;
                    case 6:
                        addition = "";
                        break;
                    default:
                        break;
                }

                itemObject->setProperty("text", weather[i+(dayNum*24)][j]+addition);
            }
            qDebug() << weather[i+(dayNum*24)][j];
        }
    }
}

void Controller::updateWOD(){

}
