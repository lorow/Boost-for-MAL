import QtQuick 2.7
import QtQuick.Controls 1.4

import "./buttons"
import "./Tittle"
Rectangle {
    id: root
    width: 1024
    height: 69
    z: 1
    gradient: Gradient {
        GradientStop {
            position: 0.893
            color: "#e6000000"
        }

        GradientStop {
            position: 0.893
            color: "#e6000000"
        }

        GradientStop {
            position: 0.967
            color: "#b3000000"
        }

        GradientStop {
            position: 1
            color: "#33000000"
        }

    }
    anchors.right: parent.right
    anchors.rightMargin: 0
    anchors.left: parent.left
    anchors.leftMargin: 0

    MouseArea {
        id: mouseArea1
        anchors.fill: parent

        property variant clickPos: "1,1"

        onPressed: {
            clickPos  = Qt.point(mouse.x,mouse.y)
        }

        onPositionChanged: {
            var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
            rootWindow.x += delta.x;
            rootWindow.y += delta.y;
            actualPositionX = rootWindow.x
            actualPositionY = rootWindow.y
        }

    }

    Tittle
    {
        id: tittle
        x: 220
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 0
    }

    CloseButton
    {
        id: close
    }

    MaximizeButton
    {
        id: maximize
    }

    MinimizeButton
    {
        id: minimize
    }
}


