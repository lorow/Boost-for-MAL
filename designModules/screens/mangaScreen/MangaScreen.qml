import QtQuick 2.0

Item {
    id: root
    GridView {
        id: gridView1
        anchors.fill: parent
        snapMode: GridView.NoSnap
        cacheBuffer: 80
        cellWidth:  136
        cellHeight: 209

        delegate: Item {
            Column {
                MangaScreen
                {
                    width: 134
                    height: 207
                }
            }
        }
        model: ListModel {       
            ListElement {}
        }
    }

}
