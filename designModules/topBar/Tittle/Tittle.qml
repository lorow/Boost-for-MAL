import QtQuick 2.0

Item {
    id: title

    height: 69
    width: 200

    Text {
        id: text1
        anchors.fill: parent
        anchors.bottomMargin: 41
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 8

        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.WrapAnywhere
        textFormat: Text.RichText
        font.pixelSize: 18
        font.bold: true
        color: "#f05253"
        text: "Boost"
    }

    Text {
        id: text2
        anchors.fill: parent
        anchors.bottomMargin: 16
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 34
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.WrapAnywhere
        textFormat: Text.RichText
        style: Text.Normal
        font.pixelSize: 14
        font.bold: false
        color: "#666666"
        text: "For MAL"
        x: -8
        y: 8
    }

}
