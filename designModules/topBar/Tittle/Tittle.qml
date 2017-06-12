import QtQuick 2.0

Item {
    id: title

    width: 200
    height: 69

    Text {
        id: text1
        color: "#f05253"
        text: "Boost"
        font.bold: true
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 8
        anchors.bottomMargin: 41
        textFormat: Text.RichText
        verticalAlignment: Text.AlignTop
        wrapMode: Text.WrapAnywhere
        horizontalAlignment: Text.AlignHCenter
        anchors.fill: parent
        font.pixelSize: 18
    }

    Text {
        id: text2
        x: -8
        y: 8
        color: "#ffffff"
        text: "For MAL"
        style: Text.Normal
        font.bold: false
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 34
        anchors.bottomMargin: 16
        horizontalAlignment: Text.AlignHCenter
        anchors.fill: parent
        font.pixelSize: 14
        wrapMode: Text.WrapAnywhere
        verticalAlignment: Text.AlignTop
        textFormat: Text.RichText
    }

}
