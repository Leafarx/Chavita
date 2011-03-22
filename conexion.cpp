#include "conexion.h"
//#include <QtCore/QCoreApplication>

Conexion::Conexion():QObject()
{
    desktopWidget = QApplication::desktop();
    applicationRect = desktopWidget->screenGeometry();
}

Q_INVOKABLE int Conexion::Ancho() {
    return applicationRect.width();
}

Q_INVOKABLE int Conexion::Alto() {
    return applicationRect.height();
}
