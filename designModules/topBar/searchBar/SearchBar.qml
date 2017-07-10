import QtQuick 2.7
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Item
{
    id: searchBar
    height: 31
    width: 309
    Rectangle {
        id: root
        anchors.fill: parent

        color: "#ffffff"
        radius: 16
        clip: false
        z: 1

        TextInput {
            id: textInput

            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 36
            anchors.rightMargin: 3


            horizontalAlignment: Text.AlignLeft
            selectionColor: "#2e8ff0"
            text: qsTr("Search")
            color: "#848080"
            font.pixelSize: 11
            topPadding: 8

            clip: true
            z: 2

            onFocusChanged: {
                textInput.text = ""
            }

        }

        Rectangle
        {
            id: shadow
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: 2
            anchors.verticalCenterOffset: 3

            color: "#4c514949"
            width: 309
            height: 29

            radius: 15
            z: -1

        }

        Rectangle {
            id: seachbutton
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 0
            anchors.left: parent.left
            anchors.leftMargin: 9

            color: "#10a0fc"
            radius: 11
            height: 21
            width: 21

            Image {
                id: image
                source: "../icons/magnifying-glass (1).png"
                anchors.bottomMargin: 5
                anchors.rightMargin: 5
                anchors.leftMargin: 5
                anchors.topMargin: 5
                anchors.fill: parent
                antialiasing: true
            }

            MouseArea {
                id: mouseArea
                anchors.fill: parent
            }
        }
    }
}
