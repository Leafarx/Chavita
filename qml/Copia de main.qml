import QtQuick 1.0

//VENTANA LOGIN

////*****VERTICAL*****
//// fondo: 480 x 639.594 (w, h)
//// fondo: 120 x 135 (x, y)
//Rectangle {
//    //Como se la resolucion nativa??
//    //width: 480; height: 800
//    width: 360; height: 640
//    //width: 320; height: 480
//    color: "#383434"

//    Image {
//        id: imageVertical
//        width: parent.width
//        height: ( parent.width / 480 ) * 639.594
//        x: ( parent.width / 480 ) * 120
//        y: parent.height - height + ( parent.width / 480 ) * 135
//        source: "qrc:///qml/images/wallpapers/1.svg"
//    }
//}

////*****HORIZONTAL*****
//// fondo: 480 x 639.594 (w, h)
//// fondo: 120 x 135 (x, y)
//Rectangle {
//    //Como se la resolucion nativa??
//    //width: 800; height: 480
//    width: 640; height: 360
//    //width: 480; height: 320
//    color: "#383434"

//    Image {
//        id: imageHorizontal
//        width: parent.width
//        height: ( parent.width / 480 ) * 639.594
//        x: ( parent.width / 480 ) * 120
//        y: parent.height - height + ( parent.width / 480 ) * 135
//        //source: "qrc:///qml/images/wallpapers/1.svg"
//        source: "images/wallpapers/1.svg"
//    }
//}



////       VENTANA INICIAL

////*****VERTICAL*****
//// fondo: 480 x 721.136 (w, h)
//// fondo: 0 x 478.87 (x, y)
//Rectangle {
//    id: mainRectangle
//    //Como se la resolucion nativa??
//        width: 480; height: 800
//        //width: 360; height: 640
//        //width: 320; height: 480
//    color: "#383434"
//     property int initialWidth: 480

//    Image {
//        id: imageHorizontal
//        width: parent.width
//        height: ( parent.width / 480 ) * 721.136
//        x: 0
//        y: - ( height - ( parent.width / 480 ) * 478.87)
//        source: "qrc:///qml/images/wallpapers/2.svg"
//        //source: "images/wallpapers/2.svg"
//    }
//}


//       VENTANA INICIAL

//*****VERTICAL*****
// fondo: 480 x 721.136 (w, h)
// fondo: 0 x 133.32 (x, y)
Rectangle {
    id: mainRectangle
    //Como se la resolucion nativa??
    //width: 480; height: 800
    width: 360; height: 640
    //width: 320; height: 480
    color: "#383434"
    property int initialWidth: 480

    Item { id: foreground; x: 0; y: 0; anchors.rightMargin: 0; anchors.bottomMargin: 0; anchors.leftMargin: 0; anchors.topMargin: 0; anchors.fill: parent

        Rectangle {
            id: rectangle1
            x: 260
            y: 540
            width: 100
            height: 100
            color: "#ffffff"
        }
    }



    /*Image {
        id: imageHorizontal
        width: parent.width
        height: ( parent.width / 480 ) * 721.136
        x: 0
        //y: - ( height - ( parent.width / 480 ) * 478.87)
        y: parent.height - height - height * 0.2
        //source: "qrc:///qml/images/wallpapers/2.svg"
        source: "images/wallpapers/2.svg"
    }

    Image {
        id: image2
        x: 44
        y: 22
        width: 380
        height: 380
        anchors.verticalCenterOffset: -108
        anchors.horizontalCenterOffset: 54
        anchors.centerIn: parent
        //anchors.bottom: parent.baseline
        //anchors { left: parent.left; leftMargin: 3; verticalCenter: parent.verticalCenter }
        source: "images/wallpapers/3a.svg"
    }
*/
}



//133.32
