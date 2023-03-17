

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import WeatherCoach
import QtQuick.Layouts 1.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#ffffff"


    Image {
        id: image
        x: 0
        y: 0
        width: 1080
        height: 1920
        source: "rainy.jpg"
        fillMode: Image.Stretch

        Text {
            id: fdd_time__text
            y: 58
            width: 467
            height: 229
            color: "#ffffff"
            text: qsTr("12:14 PM")
            font.pixelSize: 120
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: fdd_time__text1
            x: 7
            y: 197
            width: 467
            height: 229
            color: "#ffffff"
            text: qsTr("Ledyard, CT, 06339")
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        RowLayout {
            x: 24
            y: 557
            width: 1033
            height: 88
            Button {
                id: button
                text: qsTr("Sun")
                Layout.fillHeight: true
                Layout.fillWidth: true
                flat: false
            }

            Button {
                id: button3
                text: qsTr("MON")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button2
                text: qsTr("TUES")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button4
                text: qsTr("WEDS")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button1
                text: qsTr("THURS")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button5
                text: qsTr("FRI")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button6
                text: qsTr("SAT")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }

        Rectangle {
            id: rectangle1
            x: 24
            y: 651
            width: 1033
            height: 1059
            color: "#354658"
            border.color: "#ffffff"
            border.width: 10

            Grid {
                id: grid
                x: 0
                y: 0
                width: 1033
                height: 1059
                padding: 16
                
                Text {
                    id: text1
                    x: 506
                    y: 624
                    text: qsTr("Time")
                    font.pixelSize: 12
                }

                Text {
                    id: text2
                    x: 506
                    y: 624
                    text: qsTr("Temp")
                    font.pixelSize: 12
                }
            }
        }

        RowLayout {
            x: 0
            y: 1814
            width: 1080
            height: 106
            Button {
                id: button7
                text: qsTr("Forcast Detail")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            
            Button {
                id: button8
                text: qsTr("Weather Overview")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            
            Button {
                id: button9
                text: qsTr("Clothing Prep")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
    }
    
    StackLayout {
        id: stackLayout
        x: -836
        y: 1942
        width: 100
        height: 100
    }

    Text {
        id: fdd_time__text2
        y: 340
        width: 467
        height: 229
        color: "#ffffff"
        text: qsTr("70°F")
        font.pixelSize: 150
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
