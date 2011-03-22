import QtQuick 1.0
import "ChavitaCore"
import "ChavitaCore/javascript.js" as JSfile

Rectangle {
    id: page
    color: "#000000"

    Image {    
        id: imageHorizontal
        width: parent.width
        height: ( parent.width / 471 ) * 640
        x: ( parent.width / 471 ) * 120
        y: parent.height - height + ( parent.width / 471 ) * 135
        source: "qrc:///qml/images/wallpapers/iFondo1.png"
    }

    Column {
        anchors.left: parent.left
        anchors.leftMargin: ( parent.width - width ) * 0.05
        anchors.top: parent.top
        anchors.topMargin: ( parent.height - height ) * 0.05
        spacing: page.width < page.height ? page.width / 20 : page.height / 20

        Button {
            id: inicioButton
            label: qsTr("Inicio")
            width: page.width < page.height ? page.width / 2 : page.height / 2
            height: page.width < page.height ? page.width / 5 : page.height / 5
        }

        Button {
            id: registroButton
            label: qsTr("Registro")
            width: page.width < page.height ? page.width / 2 : page.height / 2
            height: page.width < page.height ? page.width / 5 : page.height / 5
        }

        Button {
            id: acercaButton
            label: qsTr("Acerca de...")
            width: page.width < page.height ? page.width / 2 : page.height / 2
            height: page.width < page.height ? page.width / 5 : page.height / 5
        }
    }

    function orientationChanged(orientation) {
        console.log( "rotation: " + orientation);
    }

}

