#include "weather_model.h"
#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkRequest>
#include <QtNetwork/QNetworkReply>
#include <QUrlQuery>
#include <QJsonDocument>
#include <QJsonObject>

/**
 * @brief Weather_Model::Weather_Model
 *
 * Description: Constructor for the weather model class
 *              whcih initializes the class variables
 */
Weather_Model::Weather_Model()
{
    date = QDateTime::currentDateTime();
    coordinates = QGeoCoordinate(42.3356211005312, -71.09591520610155);
}


void Weather_Model::updateFDDWeather(){

}

void Weather_Model::updateWODWeather(){

}

void Weather_Model::getWeather(QGeoCoordinate coords){
    // Create a network access manager
    QNetworkAccessManager* net_manager = new QNetworkAccessManager();

    QString lat = QString::number(coords.latitude());
    QString lon = QString::number(coords.longitude());
    QString apikey = "a330a27ec907f6e363c2d5f06d083209";

    // OpenWeatherAPI
    QString url = QString("https://api.openweathermap.org/data/2.5/weather?lat="
                          +lat+"&lon="+lon+"&appid="+apikey);

    // Network Request
    QNetworkRequest request;
    request.setUrl(QUrl(url));
    QNetworkReply* reply = net_manager->get(request);

    // Slot for reply
    QObject::connect(reply, &QNetworkReply::finished, [=](){
        if(reply->error()==QNetworkReply::NoError){
            //Read response
            QByteArray response = reply->readAll();

            // JSON parse and separate the data
            QJsonDocument doc = QJsonDocument::fromJson(response);
            QJsonObject obj = doc.object();

            QString seprates;
        }
    });
}

void Weather_Model::getLocation(){

}

void Weather_Model::updateDatabase(){

}
