import QtQuick 2.0


Rectangle {
    id: closeButton
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.rightMargin: 5
    anchors.topMargin: 5
    border.width: 0
    color: "#ff1c1c"
    height: 10.5
    width: 10.5
    radius: 5

    MouseArea {
        id: mouseArea2
        anchors.fill: parent
        hoverEnabled: true

        onEntered: parent.color = "#DB0B0B"
        onExited: parent.color = "#ff1c1c"

        onClicked:
        {
            Qt.quit()
        }
    }
}
