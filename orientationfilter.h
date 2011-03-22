#ifndef ORIENTATIONFILTER_H
#define ORIENTATIONFILTER_H

#include <QOrientationFilter>
#include <QObject>

QTM_USE_NAMESPACE

class OrientationFilter : public QObject, public QOrientationFilter
{
    Q_OBJECT
public:
    bool filter(QOrientationReading *reading) {
        emit orientationChanged(reading->orientation());

        return false;
    }
    QOrientationSensor sensor;

signals:
    void orientationChanged(const QVariant &orientation);
};

#endif // ORIENTATIONFILTER_H
