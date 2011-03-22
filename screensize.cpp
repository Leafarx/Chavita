#include "screensize.h"
#include <QtGui/QApplication>


ScreenSize::ScreenSize(QObject *parent) :
    QObject(parent)
{
    desktopWidget = QApplication::desktop();
    applicationRect = desktopWidget->screenGeometry();
}
