import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    property string addr: "none"
    id: root
    height: 786
    width: 538
    Rectangle
    {
        id: background
        anchors.fill: parent

        Image {
            id: cover
            height: 640
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0

            source: "../../images/test.jpg"
        }
        MouseArea
        {
            id: additionalInfoButton
            anchors.fill: parent
            z: 1

            onClicked:
            {
                console.log("mangu!")
            }
        }
    }

    DropShadow{
        id: shadow
        color: qsTr("#000000")
        anchors.fill: parent

        horizontalOffset: 14
        verticalOffset: 14
        cached: true
        fast: true

        opacity: 0.5
        spread: 0.7
        samples: 4
        radius: 2
        z: -1
    }
}
