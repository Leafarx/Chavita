#ifndef CONEXION_H
#define CONEXION_H

#include <QObject>
#include <QDateTime>
#include <QDesktopWidget>


class Conexion : public QObject
{

    Q_OBJECT
public:





Q_INVOKABLE int Ancho() {
        QDesktopWidget* desktopWidget;

                         QRect applicationRect;
        desktopWidget = QApplication::desktop();
        applicationRect = desktopWidget->screenGeometry();
    return applicationRect.width();
}

Q_INVOKABLE int Alto() {

    return applicationRect.height();
}


};

#endif // CONEXION_H











