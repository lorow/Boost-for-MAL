import QtQuick 2.7
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2

ApplicationWindow {

    id: rootWindow
    visible: true
    width: 1097
    height: 622
    color: "#000000"

    flags: Qt.FramelessWindowHint | Qt.Window


    property var actualPositionX: rootWindow.x
    property var actualPositionY: rootWindow.y

    Rectangle {
        id: topbar
        height: 69
        z: 1
        gradient: Gradient {
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
                onClicked: {
                    if (isMaximized)
                    {
                        isMaximized = false
                        rootWindow.setWidth(1097)
                        rootWindow.setHeight(622)
                        rootWindow.x = actualPositionX
                        rootWindow.y = actualPositionY
                    }
                    else
                    {
                        isMaximized = true
                        if(temp == false)
                        {
                            rootWindow.showMaximized()
                            maxX = rootWindow.width
                            maxY = rootWindow.height
                            temp = true
                        }
                        else
                        {
                            rootWindow.height = maxY
                            rootWindow.width = maxX
                            rootWindow.x = 0
                            rootWindow.y = 0
                        }
                    }
                    console.log(isMaximized)
                }
            }
            anchors.topMargin: 5
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.rightMargin: 20
        }

        Rectangle {
            id: minimizeButton
            x: 5
            y: -8
            width: 10
            height: 10
            color: "#ffffff"
            radius: 5
            border.width: 0
            MouseArea {
                id: mouseArea4
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    parent.color = "#24e531"
                }
                onExited: {
                    parent.color = "white"
                }
                onClicked:
                {
                    rootWindow.showMinimized()
                }
            }
            anchors.topMargin: 5
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.rightMargin: 35
        }

    }

    GridView {
        id: gridView1
        anchors.right: parent.right
        anchors.rightMargin: -5
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: topbar.bottom
        snapMode: GridView.NoSnap
        cacheBuffer: 80
        cellWidth:  136
        cellHeight: 209

        delegate: Item {
            Column {
                Rectangle {
                    width: 134
                    height: 207
                    color: colorCode
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "white"
            }
            ListElement {
                name: "Grey"
                colorCode: "white"
            }            ListElement {
                name: "Grey"
                colorCode: "white"
            }            ListElement {
                name: "Grey"
                colorCode: "white"
            }            ListElement {
                name: "Grey"
                colorCode: "white"
            }            ListElement {
                name: "Grey"
                colorCode: "white"
            }            ListElement {
                name: "Grey"
                colorCode: "white"
            }            ListElement {
                name: "Grey"
                colorCode: "white"
            }            ListElement {
                name: "Grey"
                colorCode: "white"
            }            ListElement {
                name: "Grey"
                colorCode: "white"
            }            ListElement {
                name: "Grey"
                colorCode: "white"
            }            ListElement {
                name: "Grey"
                colorCode: "white"
            }            ListElement {
                name: "Grey"
                colorCode: "white"
            }            ListElement {
                name: "Grey"
                colorCode: "white"
            }
        }
    }
}
