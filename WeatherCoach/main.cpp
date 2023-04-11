#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickItem>
#include <QDebug>
#include <QDateTime>


#include "weather_model.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    Weather_Model* W_Model = new Weather_Model;
    QEventLoop loop;
    QObject::connect(W_Model, &Weather_Model::getWeatherFinished, &loop, &QEventLoop::quit);
    W_Model->getWeather();
    loop.exec();

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("weatherModel", W_Model);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QString** weather = W_Model->getForecast();
    QDateTime dateTime = QDateTime::currentDateTime();
    QObject* rootObject = engine.rootObjects().at(0);

    // Set time
    rootObject->findChild<QObject*>("maintime_text")->setProperty("text", dateTime.time().toString("h:mm A"));

    int hour = dateTime.time().hour();
    rootObject->findChild<QObject*>("maintemp_text")->setProperty("text", weather[hour][1]+"°F");

    for(int i=0; i<6; i++){
        for(int j=0; j<9; j++){
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

                itemObject->setProperty("text", weather[i][j]+addition);
            }
            qDebug() << weather[i][j];
        }
    }


    return app.exec();
}
