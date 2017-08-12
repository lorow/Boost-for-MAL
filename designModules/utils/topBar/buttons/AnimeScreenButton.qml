import QtQuick 2.0
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Item {
    id: root
    width: 69
    height: 69

    Rectangle {
        id: rectangle
        anchors.fill: parent
        color: "#002f98f9"
        radius: 35

        Text {
            id: text1
            anchors.fill: parent
            //anchors.top: image.bottom

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Tahoma"
            text: qsTr("Anime")
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
