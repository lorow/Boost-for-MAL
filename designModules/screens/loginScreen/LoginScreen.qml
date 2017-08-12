import QtQuick 2.7
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

import "../../utils/topBar/buttons"
import "./components"

Item {
    property ApplicationWindow rootWindow

    id: root
    height: 721
    width: 1139

    FontLoader{
        id: robotoLight
        source: "../../../fonts/Roboto-Light.ttf"
    }


    AllowMoveArea{
        id: moveArea
        anchors.fill: parent
        rootWindow: root.rootWindow
        height: 30
    }

    LogoSite{
        id: logo

        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.top: parent.top

        robotoLight: robotoLight

        width: 526
    }

    LoginSite{
        id: login

        anchors.left: logo.right
        anchors.leftMargin: 2
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
    }

}
