#include "otro.h"


ApplicationData::ApplicationData(){

    desktopWidget = QApplication::desktop();
    applicationRect = desktopWidget->screenGeometry();

}
