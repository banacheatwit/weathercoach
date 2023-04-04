
/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
/*Weather OVerview Dispaly*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import QtQuick.Layouts 1.0

Rectangle {
    id: wod
    color: "#ffffff"

    Image {
        id: image
        x: 0*.6
        y: 0*.6
        width: 1080*.6
        height: 1920*.6
        source: "rainy.jpg"
        fillMode: Image.Stretch

        Text {
            id: wod_time__text
            y: 58*.6
            width: 467*.6
            height: 229*.6
            color: "#ffffff"
            text: qsTr("12:14 PM")
            font.pixelSize: 120*.6
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: wod_time__text1
            x: 7*.6
            y: 197*.6
            width: 467*.6
            height: 229*.6
            color: "#ffffff"
            text: qsTr("Ledyard, CT, 06339")
            font.pixelSize: 40*.6
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        RowLayout {
            x: 0*.6
            y: 1814*.6
            width: 1080*.6
            height: 106*.6
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
            x: 395*.6
            y: 739*.6
            width: 290*.6
            height: 83*.6
            color: "#ffffff"
            text: qsTr("Rainy")
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            id: text1
            x: 31*.6
            y: 374*.6
            width: 375*.6
            height: 76*.6
            color: "#ffffff"
            text: qsTr("Sunrise:  6:33 AM")
            font.pixelSize: 45*.6
            font.bold: true
        }

        Text {
            id: text2
            x: 689*.6
            y: 374*.6
            width: 375*.6
            height: 76*.6
            color: "#ffffff"
            text: qsTr("Sunset:  6:50 PM")
            font.pixelSize: 45*.6
            horizontalAlignment: Text.AlignRight
            font.bold: true
        }

        Text {
            id: text3
            x: 427*.6
            y: 837*.6
            width: 225*.6
            height: 75*.6
            color: "#ffffff"
            text: qsTr("H: 72°   L: 67°")
            font.pixelSize: 35*.6
            font.family: "Segoe UI "
        }

        RowLayout {
            id: rowLayout
            x: 83*.6
            y: 933*.6
            width: 913*.6
            height: 100*.6

            Text {
                id: text5
                color: "#ffffff"
                text: qsTr("Now")
                font.pixelSize: 28*.6
            }

            Text {
                id: text6
                color: "#ffffff"
                text: qsTr("1 PM")
                font.pixelSize: 28*.6
            }

            Text {
                id: text7
                color: "#ffffff"
                text: qsTr("2 PM")
                font.pixelSize: 28*.6
            }

            Text {
                id: text8
                color: "#ffffff"
                text: qsTr("3 PM")
                font.pixelSize: 28*.6
            }

            Text {
                id: text9
                color: "#ffffff"
                text: qsTr("4 PM")
                font.pixelSize: 28*.6
            }

            Text {
                id: text10
                color: "#ffffff"
                text: qsTr("5 PM")
                font.pixelSize: 28*.6
            }

            Text {
                id: text11
                color: "#ffffff"
                text: qsTr("6 PM")
                font.pixelSize: 28*.6
            }
        }

        RowLayout {
            id: rowLayout1
            x: 84*.6
            y: 1105*.6
            width: 913*.6
            height: 100*.6
            Text {
                color: "#ffffff"
                text: qsTr("70°")
                font.pixelSize: 28*.6
            }

            Text {
                color: "#ffffff"
                text: qsTr("71°")
                font.pixelSize: 28*.6
            }

            Text {
                color: "#ffffff"
                text: qsTr("72°")
                font.pixelSize: 28*.6
            }

            Text {
                color: "#ffffff"
                text: qsTr("70°")
                font.pixelSize: 28*.6
            }

            Text {
                color: "#ffffff"
                text: qsTr("68°")
                font.pixelSize: 28*.6
            }

            Text {
                color: "#ffffff"
                text: qsTr("68°")
                font.pixelSize: 28*.6
            }

            Text {
                color: "#ffffff"
                text: qsTr("68°")
                font.pixelSize: 28*.6
            }
        }
    }

    Image {
        id: animatedImage
        x: 70*.6
        y: 1025*.6
        width: 90*.6
        height: 90*.6
        source: "rainy.png"
    }

    Text {
        id: wod_time__text2
        y: 544*.6
        width: 467*.6
        height: 229*.6
        color: "#ffffff"
        text: qsTr("70°F")
        font.pixelSize: 150*.6
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Image {
        id: animatedImage1
        x: 196*.6
        y: 1025*.6
        width: 90*.6
        height: 90*.6
        source: "rainy.png"
    }

    Image {
        id: animatedImage2
        x: 323*.6
        y: 1025*.6
        width: 90*.6
        height: 90*.6
        source: "rainy.png"
    }

    Image {
        id: animatedImage3
        x: 456*.6
        y: 1025*.6
        width: 90*.6
        height: 90*.6
        source: "rainy.png"
    }

    Image {
        id: animatedImage4
        x: 593*.6
        y: 1025*.6
        width: 90*.6
        height: 90*.6
        source: "rainy.png"
    }

    Image {
        id: animatedImage5
        x: 721*.6
        y: 1025*.6
        width: 90*.6
        height: 90*.6
        source: "rainy.png"
    }

    Image {
        id: animatedImage6
        x: 857*.6
        y: 1025*.6
        width: 90*.6
        height: 90*.6
        source: "rainy.png"
    }
}
