import QtQuick 2.15
import QtQuick.Controls 2.15
import QtMultimedia 5.15
import QtQml 2.15

Page {

    property url videoSource: ""

    width:300
    height:200

    Rectangle{
        anchors.fill: parent
        color:"#4b4b4b"
        border.color :"red"
    }

    Video {
        id: video
        anchors.fill: parent
        source: videoSource

        MouseArea {
            anchors.fill: parent
            onClicked: {
               video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
            }
            onDoubleClicked: {
                video.stop()
            }
        }
    }

    Text{
        anchors{
         verticalCenter:  parent.verticalCenter
         horizontalCenter: parent.horizontalCenter
        }
        text:model.index
        color:"red"
    }
}
