import QtQuick 2.0

Rectangle {
    id: minimizeButton
    x: 5
    y: -8
    width: 10.5
    height: 10.5
    color: "#ffffff"
    radius: 5
    border.width: 0
    MouseArea {
        id: mouseArea4
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            parent.color = "#24e531"
        }
        onExited: {
            parent.color = "white"
        }
        onClicked:
        {
            rootWindow.showMinimized()
        }
    }
    anchors.topMargin: 5
    anchors.top: parent.top
    anchors.right: parent.right
    anchors.rightMargin: 35
}
