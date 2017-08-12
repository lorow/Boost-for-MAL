import QtQuick 2.7
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Item {
    property string colour: "#f05253"
    property bool shadowVisible: true
    property int buttonRadius: 11


    property var loginWindow
    property var nextWindow
    id: root

    Rectangle {
        id: loginButton
        color: root.colour
        radius: root.buttonRadius
        anchors.fill: parent

        Text {
            id: name
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: robotoLight.name
            font.weight: Font.Black
            text: qsTr("Sing in!")
            font.pixelSize: 14
            color: "White"
            font.bold: true
        }
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true

            onClicked: {
                 root.nextWindow.visible = true
                root.loginWindow.visible = false
            }
        }
        Rectangle {
            id: loginShadow
            anchors.fill: parent
            color: "Black"
            radius: parent.radius
            opacity: 0.2
            anchors.bottomMargin: -3
            anchors.rightMargin: -3
            z: -1

            Component.onCompleted: loginShadow.visible = root.shadowVisible
        }
    }
}
