import QtQuick 2.0

Item {
    property string addr: "none"
    id: root
    Rectangle
    {
        id: background
        anchors.fill: parent

        Image {
            id: cover
            source: "../../images/test.jpg"
            anchors.fill: parent
        }
        MouseArea
        {
            id: additionalInfoButton
            anchors.fill: parent
            z: 1

            onClicked:
            {
                console.log("animu!")
            }
        }
    }
}
