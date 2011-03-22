#ifndef OTRO_H
#define OTRO_H

#include <QObject>
#include <QDateTime>
#include <QDesktopWidget>

class ApplicationData : public QObject
{
    Q_OBJECT
public:

    QDesktopWidget* desktopWidget;

    //QRect clientRect = desktopWidget->availableGeometry();
    QRect applicationRect;

    Q_INVOKABLE int Ancho() {
        return applicationRect.width();
        }

    Q_INVOKABLE int Alto() {
        return applicationRect.height();
    }

};


#endif // OTRO_H
