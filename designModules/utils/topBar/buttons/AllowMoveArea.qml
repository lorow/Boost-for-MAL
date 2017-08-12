import QtQuick 2.0

Item {
    id: root
    property var rootWindow

    property int actualPositionX: root.rootWindow.x
    property int actualPositionY: root.rootWindow.y
    MouseArea {
        id: mouseArea1

        property variant clickPos: "1,1"
        anchors.fill: parent

        onPressed: {
            clickPos  = Qt.point(mouse.x,mouse.y)
        }

        onPositionChanged: {
            var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
            root.rootWindow.x += delta.x;
            root.rootWindow.y += delta.y;
            root.actualPositionX = root.rootWindow.x
            root.actualPositionY = root.rootWindow.y
        }
    }
}
