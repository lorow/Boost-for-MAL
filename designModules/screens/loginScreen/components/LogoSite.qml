import QtQuick 2.7

Item {
    id: root

    property FontLoader robotoLight

    Rectangle {
        anchors.fill: parent

        id: rectangle
        color: "#f05253"

        Text {
            id: text1
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 45
            font.pixelSize: 49
            text: qsTr("Boost")
            color: "#ffffff"
            font.bold: true
            height: 113
        }
        Text {
            id: text2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 123

            font.capitalization: Font.AllLowercase
            font.family: robotoLight.name
            text: qsTr("for MAL")
            color: "#e2e2e2"
            font.pixelSize: 32
            font.bold: true
            leftPadding: 54
            height: 56
        }

        Image {
            id: image
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.leftMargin: 147
            anchors.rightMargin: 146
            anchors.bottomMargin: 163

            source: "../images/rocket-ship.png"

            y: 335
            height: 223
        }
    }

}
