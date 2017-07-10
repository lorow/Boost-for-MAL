import QtQuick 2.0

Rectangle {
    id: minimizeButton
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.rightMargin: 35
    anchors.topMargin: 5
    color: "#24e531"
    height: 10.5
    width: 10.5
    radius: 5

    y: -8
    x: 5
    MouseArea {
        id: mouseArea4
        anchors.fill: parent
        hoverEnabled: true
        onClicked:
        {
            rootWindow.showMinimized()
        }
    }
}
