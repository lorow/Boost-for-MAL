import QtGraphicalEffects 1.0
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
import QtQuick 2.7

import "./designModules/leftSubMenu/Menu"
import "./designModules/animeScreen"
import "./designModules/topBar/"


ApplicationWindow {

    id: rootWindow
    flags: Qt.FramelessWindowHint | Qt.Window
    color: "#ffffff"
    visible: true
    height: 721
    width: 1139

    TopBar
    {
        id: topbar
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        rootWindow: rootWindow
        height: 62
        z: 5

        Rectangle {
            id: rectangle1
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.bottomMargin: -4
            anchors.leftMargin: 132
            anchors.rightMargin: 0
            color: "#ebebeb"
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
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        width: 132
        z: 6

        Rectangle {
            id: rectangle2
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: -4
            anchors.bottomMargin: 0
            anchors.topMargin: 4
            color: "#ebebeb"
            width: 4
            x: 132
            z: 1
        }

        Rectangle {
            id: rectangle
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.bottomMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            color: "#24b6ff"
            height: 8
            width: 2
        }
    }

    Rectangle {
        id: itemContainer
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.top: topbar.bottom
        anchors.left: menu.right
        anchors.bottomMargin: 0
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        color: "#f5f4f4"
    }
}
