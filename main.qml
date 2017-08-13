import QtGraphicalEffects 1.0
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
import QtQuick 2.7

import "./designModules/screens/mainScreen"
import "./designModules/screens/loginScreen"

ApplicationWindow {

    id: rootWindow
    flags: Qt.FramelessWindowHint | Qt.Window
    color: "#ffffff"
    visible: true
    height: Screen.desktopAvailableHeight  * 0.6675 //721
    width: Screen.desktopAvailableWidth  * 0.5932 //1139

    MainScreen {
        id: mainScreen
        anchors.fill: parent
        rootWindow: rootWindow
    }

    LoginScreen{
        id: loginScreen
        antialiasing: true
        //visible: false
        anchors.fill: parent
        rootWindow: rootWindow
    }

    Connections{
        target: loginReciver

        onLoggedIn: {

            loginScreen.visible = false
            mainScreen.visible = true
        }
    }
}
