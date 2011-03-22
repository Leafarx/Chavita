#include "mainwindow.h"
#include <QtGui/QApplication>
#include <QDeclarativeView>
#include <QDeclarativeEngine>
#include <QDeclarativeContext>
#include <QDeclarativeComponent>
#include <QGraphicsObject>
#include <QDesktopWidget>
#include <QOrientationSensor>
#include "orientationfilter.h"

#include <QDebug>

QTM_USE_NAMESPACE

#ifdef Q_OS_SYMBIAN
    // Lock orientation in Symbian
    #include <eikenv.h>
    #include <eikappui.h>
    #include <aknenv.h>
    #include <aknappui.h>
#endif

#include "screensize.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    //*****sensor orientation
    #ifdef Q_OS_SYMBIAN
        // Lock orientation in Symbian
        CAknAppUi* appUi = dynamic_cast<CAknAppUi*> (CEikonEnv::Static()->AppUi());
        TRAP_IGNORE( if(appUi) { appUi->SetOrientationL(CAknAppUi::EAppUiOrientationPortrait); } );
    #endif

    QDeclarativeView view;
    MainWindow mainWindow;

    //screen size
    ScreenSize data;
    view.rootContext()->setContextProperty("nose", &data);

    view.setSource(QUrl("qrc:///qml/main.qml"));
    view.setResizeMode(QDeclarativeView::SizeRootObjectToView);
    mainWindow.setOrientation(MainWindow::ScreenOrientationAuto);

    //*****sensor orientation
    QOrientationSensor sensor;
    OrientationFilter filter;
    sensor.addFilter(&filter);

    // Connect the Qt signal to QML function
    QObject::connect(&filter, SIGNAL(orientationChanged(const QVariant&)), view.rootObject(), SLOT(orientationChanged(const QVariant&)));

#if defined(Q_WS_S60)
    view.showFullScreen();
#else
    view.show();
#endif

    return app.exec();
}
