import QtQuick 2.0

Item {

    anchors.verticalCenter: parent.verticalCenter
    anchors.left: parent.right
    anchors.leftMargin: 6
    width: 10
    height: 50
    x: 138
    y: 305
    Rectangle {
        id: sideButton
        anchors.fill: parent
        color: "#808080"
        radius: 1
        opacity: 0.9

        Rectangle {
            width: 1
            height: 46
            color: "#ffffff"
            anchors.horizontalCenterOffset: -1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }

        Rectangle {
            width: 1
            height: 46
            color: "#ffffff"
            anchors.horizontalCenterOffset: 2
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
