/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
/* Clothing Preparation Display */
import QtQuick 6.2
import QtQuick.Controls 6.2
import QtQuick.Layouts 1.0

Rectangle {
    id: rectangle
    width: 1080*.6
    height: 1920*.6
    color: "#ffffff"
    Image {
        id: image
        x: 0
        y: 0
        width: 1080*.6
        height: 1920*.6
        opacity: 1
        source: "snowy.jpg"
        fillMode: Image.PreserveAspectCrop
        Text {
            id: cpd_time_text
            y: 58*.6
            width: 467*.6
            height: 229*.6
            color: "#ffffff"
            text: qsTr("7:48 AM")
            font.pixelSize: 120*.6
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            id: cpd_location_text
            x: 7*.6
            y: 197*.6
            width: 467*.6
            height: 229*.6
            color: "#ffffff"
            text: qsTr("Tyngsborough, MA, 01879")
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
            id: currently
            x: 48*.6
            y: 593*.6
            width: 375*.6
            height: 76*.6
            color: "#ffffff"
            text: qsTr("Currently:")
            font.pixelSize: 45
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            id: later
            x: 667*.6
            y: 593*.6
            width: 375*.6
            height: 76*.6
            color: "#ffffff"
            text: qsTr("Later:")
            font.pixelSize: 45*.6
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Column {
            id: column
            x: 51*.6
            y: 675*.6
            width: 370*.6
            height: 969*.6
        }

        Text {
            id: current_temp
            x: 136*.6
            y: 675*.6
            width: 200*.6
            height: 65*.6
            color: "#e5e4e2"
            text: qsTr("24 °F")
            font.pixelSize: 40*.6
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            id: outer_layer
            x: 136*.6
            y: 739*.6
            width: 200*.6
            height: 58*.6
            color: "#e5e4e2"
            text: qsTr("Winter jacket")
            font.pixelSize: 46*.6
            scale: 1.1*.6
        }

        Text {
            id: inner_layer
            x: 136*.6
            y: 803*.6
            width: 200*.6
            height: 58*.6
            color: "#e5e4e2"
            text: qsTr("Longsleeve shirt")
            font.pixelSize: 46*.6
            scale: 1.1*.6
        }

        Text {
            id: bottom_layer
            x: 136*.6
            y: 867*.6
            width: 200*.6
            height: 58*.6
            color: "#e5e4e2"
            text: qsTr("Warm pants")
            font.pixelSize: 46*.6
            scale: 1.1
        }

        Text {
            id: shoes
            x: 136*.6
            y: 931*.6
            width: 200*.6
            height: 58*.6
            color: "#e5e4e2"
            text: qsTr("Winter boots")
            font.pixelSize: 46*.6
            scale: 1.1*.6
        }

        Text {
            id: optional_1
            x: 136*.6
            y: 995*.6
            width: 200*.6
            height: 58*.6
            color: "#e5e4e2"
            text: qsTr("Scarf")
            font.pixelSize: 46*.6
            scale: 1.1*.6
        }

        Text {
            id: optional_2
            x: 136*.6
            y: 1059*.6
            width: 200*.6
            height: 58*.6
            color: "#e5e4e2"
            text: qsTr("Winter hat")
            font.pixelSize: 46*.6
            scale: 1.1*.6
        }

        Column {
            id: column2
            x: 671*.6
            y: 675*.6
            width: 371*.6
            height: 969*.6
        }

        Text {
            id: later_temp
            x: 755*.6
            y: 675*.6
            width: 200*.6
            height: 65*.6
            color: "#e5e4e2"
            text: qsTr("17 °F")
            font.pixelSize: 40*.6
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            id: outer_layer1
            x: 755*.6
            y: 739*.6
            width: 200*.6
            height: 58*.6
            color: "#e5e4e2"
            text: qsTr("Winter jacket")
            font.pixelSize: 46*.6
            scale: 1.1*.6
        }

        Text {
            id: inner_layer1
            x: 755*.6
            y: 803*.6
            width: 200*.6
            height: 58*.6
            color: "#e5e4e2"
            text: qsTr("Thermal shirt")
            font.pixelSize: 46*.6
            scale: 1.1*.6
        }

        Text {
            id: bottom_layer1
            x: 755*.6
            y: 867*.6
            width: 200*.6
            height: 58*.6
            color: "#e5e4e2"
            text: qsTr("Thermal pants")
            font.pixelSize: 46*.6
            scale: 1.1*.6
        }

        Text {
            id: shoes1
            x: 755*.6
            y: 931*.6
            width: 200*.6
            height: 58*.6
            color: "#e5e4e2"
            text: qsTr("Winter boots")
            font.pixelSize: 46*.6
            scale: 1.1*.6
        }

        Text {
            id: optional_3
            x: 755*.6
            y: 995*.6
            width: 200*.6
            height: 58*.6
            color: "#e5e4e2"
            text: qsTr("Scarf")
            font.pixelSize: 46*.6
            scale: 1.1*.6
        }

        Text {
            id: optional_4
            x: 755*.6
            y: 1059*.6
            width: 200*.6
            height: 58*.6
            color: "#e5e4e2"
            text: qsTr("Winter hat")
            font.pixelSize: 46*.6
            scale: 1.1*.6
        }
    }

Rectangle {
        height: 100*.6
    }

    Text {
        id: wod_time__text2
        y: 360*.6
        width: 331*.6
        height: 229*.6
        color: "#ffffff"
        text: qsTr("24°F")
        font.pixelSize: 150*.6
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
