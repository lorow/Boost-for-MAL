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
        x: 0
        width:  parent.width  * 0.4741//540
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.left: parent.left
        robotoLight: robotoLight

    }

    LoginSite{
        id: login
        x: 541
        width: parent.width * 0.5258//599
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.top: parent.top
    }

}
