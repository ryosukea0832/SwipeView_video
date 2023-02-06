import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtMultimedia 5.15
import QtQuick.Controls 2.1
import QtQml 2.15
import "qrc:/"

Window {

    property int oldtimeString:0

    width: 640
    height: 480
    visible: true
    title: qsTr("SwipeView_video")

    ListView {
        id: view
        currentIndex: 1

        anchors.fill: parent
        model:3000
        delegate:Delegate{
            Component.onCompleted: {
                console.log("onCompleted",model.index)
            }
            Component.onDestruction: {
                console.log("onDestruction",model.index)
            }
        }
    }

    Component.onCompleted: {
        console.time("window ")
        timeString()
        _timer.start()
    }
    Timer{
        id:_timer
        interval:500
        onTriggered:{
            console.timeEnd("window ")
            timeString()
        }
    }
    function timeString(){
        var currentTime = new Date()
        var timeString = currentTime.getUTCSeconds() *1000 + currentTime.getMilliseconds()
        console.log("timeString",timeString)

        var a  = timeString  - oldtimeString

        console.log("timeString",timeString,oldtimeString,a)
        oldtimeString = timeString
    }
}
