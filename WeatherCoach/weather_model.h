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

private:

    void getLocation();
    void updateDatabase();
    QDateTime date;
    QGeoCoordinate coordinates;
    QString** forecast;

signals:
    void getWeatherFinished();
};


#endif // WEATHER_MODEL_H
