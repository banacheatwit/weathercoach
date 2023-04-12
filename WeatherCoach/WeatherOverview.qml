
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
            objectName: "wod_time_text"
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
            text: qsTr("Boston, MA, 02115")
            font.pixelSize: 40*.6
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }


        Text {
            id: text4
            objectName: "wod_current_conds"
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
            objectName: "wod_sunrise_text"
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
            objectName: "wod_sunset_text"
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
            objectName: "wod_minmax_temp_text"
            x: 380*.6
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
                text: qsTr("12 AM")
                font.pixelSize: 28*.6
            }

            Text {
                id: text6
                color: "#ffffff"
                text: qsTr("1 AM")
                font.pixelSize: 28*.6
            }

            Text {
                id: text7
                color: "#ffffff"
                text: qsTr("2 AM")
                font.pixelSize: 28*.6
            }

            Text {
                id: text8
                color: "#ffffff"
                text: qsTr("3 AM")
                font.pixelSize: 28*.6
            }

            Text {
                id: text9
                color: "#ffffff"
                text: qsTr("4 AM")
                font.pixelSize: 28*.6
            }

            Text {
                id: text10
                color: "#ffffff"
                text: qsTr("5 AM")
                font.pixelSize: 28*.6
            }

            Text {
                id: text11
                color: "#ffffff"
                text: qsTr("6 AM")
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
                objectName: "text_0"
                color: "#ffffff"
                text: qsTr("70°")
                font.pixelSize: 28*.6
            }

            Text {
                objectName: "text_1"
                color: "#ffffff"
                text: qsTr("71°")
                font.pixelSize: 28*.6
            }

            Text {
                objectName: "text_2"
                color: "#ffffff"
                text: qsTr("72°")
                font.pixelSize: 28*.6
            }

            Text {
                objectName: "text_3"
                color: "#ffffff"
                text: qsTr("70°")
                font.pixelSize: 28*.6
            }

            Text {
                objectName: "text_4"
                color: "#ffffff"
                text: qsTr("68°")
                font.pixelSize: 28*.6
            }

            Text {
                objectName: "text_5"
                color: "#ffffff"
                text: qsTr("68°")
                font.pixelSize: 28*.6
            }

            Text {
                objectName: "text_6"
                color: "#ffffff"
                text: qsTr("68°")
                font.pixelSize: 28*.6
            }
        }
    }

    Image {
        objectName: "img_0"
        id: animatedImage
        x: 70*.6
        y: 1025*.6
        width: 90*.6
        height: 90*.6
        source: "rainy.png"
    }

    Text {
        id: wod_time__text2
        objectName: "wod_temp_text"
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
        objectName: "img_1"
        id: animatedImage1
        x: 196*.6
        y: 1025*.6
        width: 90*.6
        height: 90*.6
        source: "rainy.png"
    }

    Image {
        objectName: "img_2"
        id: animatedImage2
        x: 323*.6
        y: 1025*.6
        width: 90*.6
        height: 90*.6
        source: "rainy.png"
    }

    Image {
        objectName: "img_3"
        id: animatedImage3
        x: 456*.6
        y: 1025*.6
        width: 90*.6
        height: 90*.6
        source: "rainy.png"
    }

    Image {
        objectName: "img_4"
        id: animatedImage4
        x: 593*.6
        y: 1025*.6
        width: 90*.6
        height: 90*.6
        source: "rainy.png"
    }

    Image {
        objectName: "img_5"
        id: animatedImage5
        x: 721*.6
        y: 1025*.6
        width: 90*.6
        height: 90*.6
        source: "rainy.png"
    }

    Image {
        objectName: "img_6"
        id: animatedImage6
        x: 857*.6
        y: 1025*.6
        width: 90*.6
        height: 90*.6
        source: "rainy.png"
    }
}
