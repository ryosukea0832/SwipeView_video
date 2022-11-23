import QtQuick 2.15
import QtQuick.Window 2.15
import QtMultimedia 5.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("SwipeView_video")

    SwipeView {
        id: view
        currentIndex: 1

        anchors.fill: parent

        Page {
            title: qsTr("video1")
            Video {
                id: video
                anchors.fill: parent
                source: "file:/home/ryou/Videos/塩焼き.avi"

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
                anchors.centerIn: parent
                text: "video1"
            }
        }
        Page {
            title: qsTr("video2")
            MediaPlayer {
                id: mediaplayer
                source: "file:/home/ryou/Videos/塩焼き.avi"
                videoOutput: [v1]
            }

            VideoOutput {
                id: v1
                anchors.fill: parent
            }
            Text{
                anchors.centerIn: parent
                text: "video2"
            }
            MouseArea {
                id: playArea
                anchors.fill: parent
                onPressed:  { mediaplayer.play() }
            }

        }
        Page {
            title: qsTr("video3")
            Video {
                id: video3
                anchors.fill: parent
                source: "file:/home/ryou/Videos/塩焼き.avi"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                       video3.playbackState == MediaPlayer.PlayingState ? video3.pause() : video3.play()
                    }
                    onDoubleClicked: {
                        video3.stop()
                    }
                }
            }
            Text{
                anchors.centerIn: parent
                text: "video3"
            }
        }
        Page {
            title: qsTr("video4")
            Text{
                anchors.centerIn: parent
                text: "video4"
            }
        }
        Page {
            title: qsTr("video5")
            Text{
                anchors.centerIn: parent
                text: "video5"
            }
        }
    }

}
