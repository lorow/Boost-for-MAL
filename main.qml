import QtQuick 2.7
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2

import "./designModules/topBar/"
import "./designModules/animeScreen"
import "./designModules/leftSubMenu/Menu"


ApplicationWindow {

    id: rootWindow
    visible: true
    width: 1097
    height: 622
    color: "#000000"

    flags: Qt.FramelessWindowHint | Qt.Window


    property int actualPositionX: rootWindow.x
    property int actualPositionY: rootWindow.y

    TopBar
    {
        height: 69
        width: parent.width
        z: 5
    }

    AnimeScreen
    {
        id: anime
        z: 1
        anchors.topMargin: 69
        anchors.right: parent.right
        anchors.rightMargin: -5
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
    }
    LeftSubMenu
    {
        z: 2
        id : sideMenu
        width: 90
        anchors.left: parent.left
        anchors.leftMargin: -width
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
    }
}
