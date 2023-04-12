#ifndef WEATHER_MODEL_H
#define WEATHER_MODEL_H
#include <QDateTime>
#include <QGeoCoordinate>
#include <QObject>
#include <QVector>


class Weather_Model : public QObject
{ Q_OBJECT
public:
    explicit Weather_Model(QObject *parent = nullptr);
    QString** getForecast();
    void getWeather();
    QString* getCurrent();
    void getCurrrentWeather();

private:

    void getLocation();
    void updateDatabase();
    QDateTime date;
    QGeoCoordinate coordinates;
    QString** forecast;
    QString* current;

signals:
    void getWeatherFinished();
    void getCurrentWeatherFinished();
};


#endif // WEATHER_MODEL_H
