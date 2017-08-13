import QtQuick 2.7
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

import "./buttons"
import "./Tittle"
import "./searchBar"

Item
{
    property ApplicationWindow rootWindow
    property SwipeView pageView

    id : root
    width: 1139
    height: 69
    Rectangle {
        id: bar
        anchors.fill: parent
        color:"#ffffff"
        AllowMoveArea
        {
            id: allowMoveArea
            rootWindow: root.rootWindow
            anchors.fill: parent
        }

        AnimeScreenButton
        {
            id: animeScreenButton
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 130
            width: 69
        }

        MangaScreenButton
        {
            id: mangaScreenButton
            anchors.left: animeScreenButton.right
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            width: 69
        }

        Tittle
        {
            id: tittle
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 28
            width: 86
        }

        CloseButton
        {
            id: close
            anchors.rightMargin: 12
            anchors.topMargin: 12

            width: 12
            height: 12

            x: 1427
        }

        MaximizeButton
        {
            id: maximize
            anchors.right: close.left
            anchors.rightMargin: 6
            anchors.topMargin: 12

            width: 12
            height: 12

            x: 1411
        }

        MinimizeButton
        {
            id: minimize
            anchors.right: maximize.left
            anchors.top: parent.top
            anchors.rightMargin: 6
            anchors.topMargin: 12

            width: 12
            height: 12

            x: 1393
        }

        SearchBar
        {
            x: 750
            anchors.right: minimize.left
            anchors.rightMargin: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 19
            anchors.top: parent.top
            anchors.topMargin: 19
            z: 1
        }
    }
}
