#include "weather_model.h"
#include <QtPositioning/QGeoPositionInfoSource>
#include <QtPositioning/QGeoPositionInfo>
#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkRequest>
#include <QtNetwork/QNetworkReply>
#include <QUrlQuery>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>
#include <QDebug>



/**
 * @brief Weather_Model::Weather_Model
 *
 * Description: Constructor for the weather model class
 *              whcih initializes the class variables
 */
Weather_Model::Weather_Model(QObject *parent) : QObject(parent)
{
    date = QDateTime::currentDateTime();
    coordinates = QGeoCoordinate(42.3356211005312, -71.09591520610155);
    forecast = new QString*[168];
    for(int i=0; i<168; i++){
        forecast[i] = new QString[12];
    }
    current = new QString[54];
}

void Weather_Model::getWeather(){
    // Create a network access manager
    QNetworkAccessManager* net_manager = new QNetworkAccessManager();;

    // OpenWeatherAPI
    QString url = QString("http://api.weatherapi.com/v1/forecast.json?key=caf551ee01f1490388e165602230704&q=Boston&days=7&aqi=no&alerts=no");

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
            QJsonDocument json_response = QJsonDocument::fromJson(response);
            QJsonObject obj_root = json_response.object();
            QJsonObject obj_forecast = obj_root["forecast"].toObject();
            QJsonArray array_forecast = obj_forecast["forecastday"].toArray();

            int index=0;

            for(int i=0; i<7; i++){
                QJsonObject obj_day = array_forecast[i].toObject();
                QJsonArray array_hour = obj_day["hour"].toArray();

                for(int j=0; j<24; j++){

                    QJsonObject obj_hour = array_hour[j].toObject();
                    QDateTime daytime = QDateTime::fromString(obj_hour["time"].toString(), "yyyy-MM-dd hh:mm");
                    forecast[index][0] = daytime.toString();;
                    forecast[index][1] = QString::number(obj_hour["temp_f"].toDouble());
                    forecast[index][2] = QString::number(obj_hour["feelslike_f"].toDouble());
                    forecast[index][3] = QString::number(obj_hour["precip_in"].toDouble());
                    forecast[index][4] = QString::number(obj_hour["chance_of_rain"].toDouble());
                    forecast[index][5] = QString::number(obj_hour["chance_of_snow"].toDouble());
                    forecast[index][6] = QString::number(obj_hour["pressure_in"].toDouble());
                    forecast[index][7] = QString::number(obj_hour["humidity"].toDouble());
                    forecast[index][8] = QString::number(obj_hour["cloud"].toDouble());
                    forecast[index][9] = QString::number(obj_hour["uv"].toDouble());

                    QJsonObject obj_condition = obj_hour["condition"].toObject();
                    forecast[index][10] = obj_condition["text"].toString();
                    forecast[index][11] = obj_condition["icon"].toString();
                    index++;
                }
            }
        }

        emit getWeatherFinished();
    });
}

void Weather_Model::getCurrrentWeather(){
    // Create a network access manager
    QNetworkAccessManager* net_manager = new QNetworkAccessManager();;

    // OpenWeatherAPI
    QString url = QString("http://api.weatherapi.com/v1/forecast.json?key=caf551ee01f1490388e165602230704&q=Boston&days=1&aqi=no&alerts=no");

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
            QJsonDocument json_response = QJsonDocument::fromJson(response);
            QJsonObject obj_root = json_response.object();
            QJsonObject obj_current = obj_root["current"].toObject();
            QJsonObject obj_conds = obj_current["condition"].toObject();
            QJsonObject obj_forecast = obj_root["forecast"].toObject();
            QJsonArray array_forecast = obj_forecast["forecastday"].toArray();
            QJsonObject obj_day = array_forecast[0].toObject();
            QJsonObject obj_daydetail = obj_day["day"].toObject();
            QJsonObject obj_astro = obj_day["astro"].toObject();
            QJsonArray array_hour = obj_day["hour"].toArray();

            current[0] = QString::number(obj_current["temp_f"].toDouble());
            current[1] = QString::number(obj_daydetail["mintemp_f"].toDouble());
            current[2] = QString::number(obj_daydetail["maxtemp_f"].toDouble());
            current[3] = obj_astro["sunrise"].toString();
            current[4] = obj_astro["sunset"].toString();
            current[5] = obj_conds["text"].toString();

            int index = 6;

            for(int i=0; i<24; i++){
                QJsonObject obj_hour = array_hour[i].toObject();
                QJsonObject obj_condition = obj_hour["condition"].toObject();
                current[index] = QString::number(obj_hour["temp_f"].toDouble());
                index++;
                current[index] = obj_condition["icon"].toString();
                index++;
            }
            //for(int i=0; i<53; i++){
            //   qDebug() << current[i];
            //}
        }

        emit getCurrentWeatherFinished();
    });
}

QString** Weather_Model::getForecast(){
    return forecast;
}

QString* Weather_Model::getCurrent(){
    return current;
}

void Weather_Model::getLocation(){

    QGeoPositionInfoSource *source = QGeoPositionInfoSource::createDefaultSource(this);
    if (source) {
        connect(source, SIGNAL(positionUpdated(QGeoPositionInfo)), this, SLOT(onPositionUpdated(QGeoPositionInfo)));
        source->startUpdates();
    }
}

void Weather_Model::updateDatabase(){

}
