import QtQuick 2.0

Item {
    id: root
    width: 15
    height: 90
    Rectangle
    {
        id: background
        color: "#b3090808"
        radius: 1
        border.color: "#66ffffff"
        border.width: 1
        anchors.fill: parent

        MouseArea
        {
            id: hoverAble
            hoverEnabled: true
            anchors.fill: parent

            onEntered:
            {

            }
            onExited:
            {

            }
        }
    }
}
