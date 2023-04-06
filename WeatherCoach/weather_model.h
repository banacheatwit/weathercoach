#ifndef WEATHER_MODEL_H
#define WEATHER_MODEL_H
#include <QDateTime>
#include <QGeoCoordinate>


class Weather_Model
{
public:
    Weather_Model();
    void updateFDDWeather();
    void updateWODWeather();
private:
    void getWeather(QGeoCoordinate coords);
    void getLocation();
    void updateDatabase();

    QDateTime date;
    QGeoCoordinate coordinates;
};


#endif // WEATHER_MODEL_H
