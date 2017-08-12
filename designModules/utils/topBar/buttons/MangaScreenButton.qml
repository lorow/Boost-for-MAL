import QtQuick 2.0
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Item {
    id: root
    height: 69
    width: 69

    Rectangle {
        id: rectangle
        anchors.fill: parent
        color: "#002f98f9"
        radius: 35

        Text {
            id: text1
            anchors.fill: parent

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            //anchors.top: image.bottom
            font.family: "Tahoma"
            text: qsTr("Manga")
            color: "#565353"

            font.pixelSize: 14
            font.bold: false
        }
    }
    MouseArea
    {
        anchors.fill: parent
    }
}
