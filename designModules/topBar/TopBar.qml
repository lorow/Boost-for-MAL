import QtQuick 2.7
import QtQuick.Controls 1.4

import "./buttons"
import "./Tittle"
Item
{
    id : root
    width: parent.width
    height: 69
    Rectangle {
        id: bar
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#eb000000"
            }

            GradientStop {
                position: 0.993
                color: "#e6000000"
            }

            GradientStop {
                position: 0.99
                color: "#b3000000"
            }


        }
        MouseArea {
            id: mouseArea1

            property variant clickPos: "1,1"
            anchors.fill: parent

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



}
