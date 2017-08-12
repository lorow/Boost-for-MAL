import QtQuick 2.7
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

import "../../../utils/topBar/buttons"
import "../../../utils/General/"

Item {
    id: root

    width: 611
    height: 721

    Rectangle {
        id: rectangle2
        color: "#ffffff"
        anchors.fill: parent

        CloseButton {
            id: close
            anchors.rightMargin: 8
            anchors.topMargin: 9
            width: 12
            height: 12
        }

        MinimizeButton {
            id: minimize
            anchors.right: close.left
            anchors.top: parent.top
            anchors.rightMargin: 6
            anchors.topMargin: 9
            height: 12
            width: 12
        }


        DropShadow {
            id: shadow
            anchors.fill: parent
            cached: true
            fast: true
            opacity: 0.1
            samples: 13
            radius: 15
            spread: 4
            z:-1
        }

        Text {
            id: loginText
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: userIcon.top
            anchors.topMargin: 170
            font.pixelSize: 30
            font.bold: true

            text: qsTr("Login")
            color: "#f05253"
            height: 100
        }

        Rectangle{
            id: email
            height: 34
            anchors.verticalCenterOffset: 41
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.leftMargin: 136
            anchors.rightMargin: 136

            TextInput {
                id: usernameField
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                font.family: robotoLight.name
                font.weight: Font.Black
                selectionColor: "#f05253"
                text: qsTr("Username")
                anchors.fill: parent
                font.pixelSize: 16
                color: "#757373"
                font.bold: true
                clip: true
            }

            DropShadow{
                id: emailShadow
                color: "#000000"
                radius: 8.2
                anchors.rightMargin: 8
                anchors.leftMargin: 9
                anchors.bottomMargin: -2
                anchors.topMargin: 5
                anchors.fill: parent
                opacity: 0.1
                samples: 14
                visible: true
                horizontalOffset: -1
                z: -1
            }
        }

        Rectangle{
            id: password
            anchors.bottom: email.top
            anchors.bottomMargin: -78
            anchors.top: email.bottom
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.rightMargin: 136
            anchors.leftMargin: 136

            TextInput {
                id: passwordField
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                font.family: robotoLight.name
                echoMode: TextInput.Password
                font.weight: Font.Black
                selectionColor: "#f05253"
                text: qsTr("Password")
                font.pixelSize: 14
                color: "#757373"
                font.bold: true
                width: 341
                height: 38
                clip: true
            }
            DropShadow{
                id: passwordShadow
                color: "#000000"
                radius: 8.2
                fast: true
                cached: true
                anchors.rightMargin: 9
                anchors.leftMargin: 9
                anchors.bottomMargin: -2
                anchors.topMargin: 5
                anchors.fill: parent
                opacity: 0.1
                samples: 14
                visible: true
                horizontalOffset: -1
                z: -1
            }
        }

        Image {
            id: userIcon
            y: 80
            height: 170
            z: -1
            anchors.right: parent.right
            anchors.rightMargin: 221
            anchors.left: parent.left
            anchors.leftMargin: 221
            source: "../images/user.png"
            visible: false
        }

        ColorOverlay {
            anchors.fill: userIcon
            source: userIcon
            color: "#f05253"
            z: 1
            visible: true
        }

        Connections{
            target: loginReciver
        }

        GeneralButton{
            id: login
            shadowVisible: false
            width: 100
            height: 30
            x: 426
            y: 643

            nextWindow : root.screenToLauncz
            loginWindow: root.loginScreen

            MouseArea{
                anchors.fill: parent

                onClicked: {
                    loginReciver.loginIn(usernameField.text, passwordField.text)
                }
            }

        }
    }
}
