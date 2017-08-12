import QtQuick 2.7
import QtQuick.Controls 2.2

import "../..//utils/leftSubMenu/Menu"
import "../..//utils/leftSubMenu/Buttons"
import "../../utils/topBar/"
import "../animeScreen"


Item {
    property ApplicationWindow rootWindow
    width: 1139
    height: 721

    id: root

    TopBar
    {
        id: topbar
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top

        rootWindow: root.rootWindow
        height: 62
        z: 5

        Rectangle {
            id: rectangle1
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.bottomMargin: -4
            anchors.leftMargin: 0
            color: "#e4e4e4"
            height: 4
            y: 69
            z: 1
        }
    }
    LeftSubMenu
    {
        id: menu
        anchors.bottom: parent.bottom
        anchors.top: topbar.bottom
        anchors.left: parent.left
        anchors.bottomMargin: -5
        anchors.leftMargin: -135
        anchors.topMargin: 5
        width: 132
        z: 3

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true

            onExited: {
                menu.anchors.leftMargin = -135
                sideButton.visible = true
            }
        }

        SideButton{
            id: sideButton

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true

                onEntered: {
                    sideButton.visible = false
                    menu.anchors.leftMargin = 0
                }
            }
        }
    }
    Rectangle {
        id: itemContainer
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.top: topbar.bottom
        anchors.left: parent.left
        color: "#f5f4f4"
    }
}
