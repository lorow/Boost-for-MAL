import QtQuick 2.0
import "../Button"


Item {
    id: root
    height: parent.height - 69
    width: 90
    Rectangle
    {
        visible: root.toShow
        anchors.fill: parent
        color: "#494444"
    }
    MenuButton
    {
        id : button
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: -15
    }
}
