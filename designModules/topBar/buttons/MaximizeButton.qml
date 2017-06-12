import QtQuick 2.0

Rectangle {
    id: maximiseButton
    x: -5
    y: 0
    width: 10
    height: 10
    color: "#ffffff"
    radius: 5
    border.width: 0
    MouseArea {
        property bool isMaximized: false
        property  int maxX: 0
        property  int maxY: 0
        property  bool temp: false
        id: mouseArea3
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            parent.color = "#fcf828" //yellow
        }
        onExited: {
            parent.color = "white"
        }
        //                onClicked: {
        //                    if (isMaximized)
        //                    {
        //                        isMaximized = false
        //                        rootWindow.setWidth(1097)
        //                        rootWindow.setHeight(622)
        //                        rootWindow.x = actualPositionX
        //                        rootWindow.y = actualPositionY
        //                    }
        //                    else
        //                    {
        //                        isMaximized = true
        //                        if(temp == false)
        //                        {
        //                            rootWindow.showMaximized()
        //                            maxX = rootWindow.width
        //                            maxY = rootWindow.height
        //                            temp = true
        //                        }
        //                        else
        //                        {
        //                            rootWindow.height = maxY
        //                            rootWindow.width = maxX
        //                            rootWindow.x = 0
        //                            rootWindow.y = 0
        //                        }
        //                    }
        //                    console.log(isMaximized)
        //                }
    }
    anchors.topMargin: 5
    anchors.top: parent.top
    anchors.right: parent.right
    anchors.rightMargin: 20
}
