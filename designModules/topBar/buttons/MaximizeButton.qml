import QtQuick 2.0

Rectangle {
    id: maximiseButton
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.rightMargin: 20
    anchors.topMargin: 5
    color: "#fcf828"

    height: 10.5
    width: 10.5
    radius: 5
    x: -5
    y: 0
    MouseArea {
        property bool isMaximized: false
        property  bool temp: false
        property  int maxX: 0
        property  int maxY: 0
        id: mouseArea3
        anchors.fill: parent
        hoverEnabled: true
    }
}
