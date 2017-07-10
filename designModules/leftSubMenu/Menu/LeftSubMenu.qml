import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    property Item button
    id: root
    width: 132
    height: 659
    Rectangle
    {
        id: container
        anchors.fill: parent
        color: "white"
        Rectangle {
            id: rectangle
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.rightMargin: 38
            anchors.leftMargin: 45
            anchors.topMargin: 16
            border.width: 0
            color: "#565656"
            visible: true
            height: 50
            radius: 25
            z: 1
        }

        Image {
            id: image
            property bool rounded: true
            property bool adapt: true
            height: 50
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.rightMargin: 38
            anchors.leftMargin: 44
            anchors.topMargin: 16

            source: "../../../images/test.jpg"
            fillMode: Image.Tile

            z: 2

            layer.enabled: rounded
            layer.effect: ShaderEffect {
                property real adjustX: image.adapt ? Math.max(width / height, 1) : 1
                property real adjustY: image.adapt ? Math.max(1 / (width / height), 1) : 1

                fragmentShader: "
                #ifdef GL_ES
                    precision lowp float;
                #endif // GL_ES
                varying highp vec2 qt_TexCoord0;
                uniform highp float qt_Opacity;
                uniform lowp sampler2D source;
                uniform lowp float adjustX;
                uniform lowp float adjustY;

                void main(void) {
                    lowp float x, y;
                    x = (qt_TexCoord0.x - 0.5) * adjustX;
                    y = (qt_TexCoord0.y - 0.5) * adjustY;
                    float delta = adjustX != 1.0 ? fwidth(y) / 2.0 : fwidth(x) / 2.0;
                    gl_FragColor = texture2D(source, qt_TexCoord0).rgba
                        * step(x * x + y * y, 0.25)
                        * smoothstep((x * x + y * y) , 0.25 + delta, 0.25)
                        * qt_Opacity;
                }"
            }
        }

    }
}
