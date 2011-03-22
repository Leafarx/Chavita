#ifndef SCREENSIZE_H
#define SCREENSIZE_H

#include <QObject>
#include <QDateTime>
#include <QDesktopWidget>
#include <QtGui/QApplication>

class ScreenSize : public QObject
{
    Q_OBJECT
public:
    explicit ScreenSize(QObject *parent = 0);

    QDesktopWidget* desktopWidget;
    QRect applicationRect;

    Q_INVOKABLE int Ancho() {
        desktopWidget = QApplication::desktop();
        applicationRect = desktopWidget->screenGeometry();
        return applicationRect.width();
        }

    Q_INVOKABLE int Alto() {
        desktopWidget = QApplication::desktop();
        applicationRect = desktopWidget->screenGeometry();
        return applicationRect.height();
    }

signals:

public slots:

};

#endif // SCREENSIZE_H





