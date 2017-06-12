import QtQuick 2.0


Rectangle {
    id: closeButton
    width: 10
    height: 10
    color: "#ffffff"
    radius: 5
    border.width: 0
    anchors.top: parent.top
    anchors.topMargin: 5
    anchors.right: parent.right
    anchors.rightMargin: 5

    MouseArea {
        id: mouseArea2
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            parent.color = "#ff1c1c" //red
        }
        onExited: {
            parent.color = "white"
        }
        onClicked:
        {
            Qt.quit()
        }
    }
}

