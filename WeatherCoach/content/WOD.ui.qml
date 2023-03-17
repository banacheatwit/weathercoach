
/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
/*Weather OVerview Dispaly*/
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
            id: wod_time__text
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
            id: wod_time__text1
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

        Text {
            id: text4
            x: 395
            y: 739
            width: 290
            height: 83
            color: "#ffffff"
            text: qsTr("Rainy")
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            id: text1
            x: 31
            y: 374
            width: 375
            height: 76
            color: "#ffffff"
            text: qsTr("Sunrise:  6:33 AM")
            font.pixelSize: 45
            font.bold: true
        }

        Text {
            id: text2
            x: 689
            y: 374
            width: 375
            height: 76
            color: "#ffffff"
            text: qsTr("Sunrise:  6:33 AM")
            font.pixelSize: 45
            font.bold: true
        }

        Text {
            id: text3
            x: 427
            y: 837
            width: 225
            height: 75
            color: "#ffffff"
            text: qsTr("H: 72°   L: 67°")
            font.pixelSize: 35
            font.family: "Segoe UI "
        }

        RowLayout {
            id: rowLayout
            x: 83
            y: 933
            width: 913
            height: 100

            Text {
                id: text5
                color: "#ffffff"
                text: qsTr("Now")
                font.pixelSize: 28
            }

            Text {
                id: text6
                color: "#ffffff"
                text: qsTr("1 PM")
                font.pixelSize: 28
            }

            Text {
                id: text7
                color: "#ffffff"
                text: qsTr("2 PM")
                font.pixelSize: 28
            }

            Text {
                id: text8
                color: "#ffffff"
                text: qsTr("3 PM")
                font.pixelSize: 28
            }

            Text {
                id: text9
                color: "#ffffff"
                text: qsTr("4 PM")
                font.pixelSize: 28
            }

            Text {
                id: text10
                color: "#ffffff"
                text: qsTr("5 PM")
                font.pixelSize: 28
            }

            Text {
                id: text11
                color: "#ffffff"
                text: qsTr("6 PM")
                font.pixelSize: 28
            }
        }

        RowLayout {
            id: rowLayout1
            x: 84
            y: 1105
            width: 913
            height: 100
            Text {
                color: "#ffffff"
                text: qsTr("70°")
                font.pixelSize: 28
            }

            Text {
                color: "#ffffff"
                text: qsTr("71°")
                font.pixelSize: 28
            }

            Text {
                color: "#ffffff"
                text: qsTr("72°")
                font.pixelSize: 28
            }

            Text {
                color: "#ffffff"
                text: qsTr("70°")
                font.pixelSize: 28
            }

            Text {
                color: "#ffffff"
                text: qsTr("68°")
                font.pixelSize: 28
            }

            Text {
                color: "#ffffff"
                text: qsTr("68°")
                font.pixelSize: 28
            }

            Text {
                color: "#ffffff"
                text: qsTr("68°")
                font.pixelSize: 28
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

    AnimatedImage {
        id: animatedImage
        x: 70
        y: 1025
        width: 90
        height: 90
        source: "../../../OneDrive - Wentworth Institute of Technology/Desktop/rainy.png"
    }

    Text {
        id: wod_time__text2
        y: 544
        width: 467
        height: 229
        color: "#ffffff"
        text: qsTr("70°F")
        font.pixelSize: 150
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
    }

    AnimatedImage {
        id: animatedImage1
        x: 196
        y: 1025
        width: 90
        height: 90
        source: "../../../OneDrive - Wentworth Institute of Technology/Desktop/rainy.png"
    }

    AnimatedImage {
        id: animatedImage2
        x: 323
        y: 1025
        width: 90
        height: 90
        source: "../../../OneDrive - Wentworth Institute of Technology/Desktop/rainy.png"
    }

    AnimatedImage {
        id: animatedImage3
        x: 456
        y: 1025
        width: 90
        height: 90
        source: "../../../OneDrive - Wentworth Institute of Technology/Desktop/partly cloudy.jpg"
    }

    AnimatedImage {
        id: animatedImage4
        x: 593
        y: 1025
        width: 90
        height: 90
        source: "partly cloudy.png"
    }

    AnimatedImage {
        id: animatedImage5
        x: 721
        y: 1025
        width: 90
        height: 90
        source: "../../../OneDrive - Wentworth Institute of Technology/Desktop/sunny.png"
    }

    AnimatedImage {
        id: animatedImage6
        x: 857
        y: 1025
        width: 90
        height: 90
        source: "../../../OneDrive - Wentworth Institute of Technology/Desktop/sunny.png"
    }
}
