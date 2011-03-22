import QtQuick 1.0

Item {
    id: container

    property alias label: labelText.text
    property color tint: "transparent"

    function random(){
        var ale;
        ale = Math.ceil(Math.random()*15);
        var listSplashes = [
                "qrc:///qml/images/buttons/splashes/iMancha0.png",
                "qrc:///qml/images/buttons/splashes/iMancha1.png",
                "qrc:///qml/images/buttons/splashes/iMancha2.png",
                "qrc:///qml/images/buttons/splashes/iMancha3.png",
                "qrc:///qml/images/buttons/splashes/iMancha4.png",
                "qrc:///qml/images/buttons/splashes/iMancha5.png",
                "qrc:///qml/images/buttons/splashes/iMancha6.png",
                "qrc:///qml/images/buttons/splashes/iMancha7.png",
                "qrc:///qml/images/buttons/splashes/iMancha8.png",
                "qrc:///qml/images/buttons/splashes/iMancha9.png",
                "qrc:///qml/images/buttons/splashes/iMancha10.png",
                "qrc:///qml/images/buttons/splashes/iMancha11.png",
                "qrc:///qml/images/buttons/splashes/iMancha12.png",
                "qrc:///qml/images/buttons/splashes/iMancha13.png",
                "qrc:///qml/images/buttons/splashes/iMancha14.png",
                "qrc:///qml/images/buttons/splashes/iMancha15.png"
            ]
        console.log("\n "+ale);
        return listSplashes[ale]
    }
    Image {
        id: image2
        opacity: 0.5
        anchors.fill: parent
        source: "qrc:///qml/images/buttons/iBoton.svgz"
        smooth: true

        Image {
            id: image1
            y: 0
            width: parent.width / 3
            height: parent.height * 0.9
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.verticalCenter: parent.verticalCenter
            smooth: true
            opacity: 0.7
            source: random()
        }
    }

    Rectangle {
        anchors.fill: container
        color: container.tint
        visible: container.tint != ""
        opacity: 0.25; smooth: true
    }

    Text {
        id: labelText
        color: "#ffffff"
        font.bold: true
        font.family: "Myriad Pro"
        font.pixelSize: parent.width / 6.6
        anchors.centerIn: parent
        smooth: true
    }

    MouseArea {
        anchors { fill: parent; leftMargin: -10; topMargin: -10; rightMargin: -10; bottomMargin: -10 }
        hoverEnabled: true
        onEntered: console.log(labelText.text + " entered" )
        onExited: console.log(labelText.text + " exited" )  //not working?
        onClicked: buttonClick()
        onDoubleClicked: console.log(labelText.text + " doubleClicked" )
        onPressed: buttonPressed()
        onReleased: console.log(labelText.text + " released" )
    }

    signal buttonClick()
    onButtonClick: {
        console.log(labelText.text + " clicked" )
        image2.opacity = 0.5
        labelText.color = "#ffffff"
    }

    signal buttonPressed()
    onButtonPressed: {
        image2.opacity = 1
        labelText.color = "#000000"
        console.log(labelText.text + " pressed" )
    }

}
