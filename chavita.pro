# Add files and directories to ship with the application 
# by adapting the examples below.
# file1.source = myfile
# dir1.source = mydir
QT += core gui declarative


CONFIG      += mobility
MOBILITY    += sensors


TARGET       = orientation
TEMPLATE     = app


DEPLOYMENTFOLDERS = # file1 dir1

symbian:TARGET.UID3 = 0xE3842095

# Allow network access on Symbian
symbian:TARGET.CAPABILITY += NetworkServices

# If your application uses the Qt Mobility libraries, uncomment
# the following lines and add the respective components to the 
# MOBILITY variable. 
# CONFIG += mobility
# MOBILITY +=

SOURCES += main.cpp mainwindow.cpp \
    screensize.cpp
HEADERS += mainwindow.h \
    orientationfilter.h \
    screensize.h
FORMS += mainwindow.ui

# Please do not modify the following two lines. Required for deployment.
include(deployment.pri)
qtcAddDeployment()

OTHER_FILES += \
    qml/main.qml \
    qml/images/wallpapers/1.svg \
    qml/images/wallpapers/2.svg \
    qml/images/wallpapers/3a.svg \
    qml/images/buttons/b1.svg \
    qml/images/buttons/iBoton.svgz \
    qml/qml/Button.qml \
    qml/ChavitaCore/Button.qml \
    qml/ChavitaCore/javascript.js \
    qml/images/buttons/splashes/iMancha14.png \
    qml/images/buttons/splashes/iMancha13.png \
    qml/images/buttons/splashes/iMancha12.png \
    qml/images/buttons/splashes/iMancha11.png \
    qml/images/buttons/splashes/iMancha10.png \
    qml/images/buttons/splashes/iMancha9.png \
    qml/images/buttons/splashes/iMancha8.png \
    qml/images/buttons/splashes/iMancha7.png \
    qml/images/buttons/splashes/iMancha6.png \
    qml/images/buttons/splashes/iMancha5.png \
    qml/images/buttons/splashes/iMancha4.png \
    qml/images/buttons/splashes/iMancha3.png \
    qml/images/buttons/splashes/iMancha2.png \
    qml/images/buttons/splashes/iMancha1.png \
    qml/images/buttons/splashes/iMancha0.png \
    qml/images/buttons/splashes/iMancha15.png \
    qml/images/wallpapers/iFondo1.png

RESOURCES += \
    resources.qrc


symbian {
    # To lock the application to landscape orientation
    INCLUDEPATH += /epoc32/include/middleware
    LIBS += -lcone -leikcore -lavkon
}

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/bin
    } else {
        target.path = /usr/local/bin
    }
    INSTALLS += target
}
