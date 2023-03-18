

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
    border.color: "#ffffff"

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
                font.pointSize: 20
                Layout.fillHeight: true
                Layout.fillWidth: true
                flat: false
            }

            Button {
                id: button3
                text: qsTr("MON")
                font.pointSize: 20
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button2
                text: qsTr("TUE")
                font.pointSize: 20
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button4
                text: qsTr("WED")
                font.pointSize: 20
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button1
                text: qsTr("THU")
                font.pointSize: 20
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button5
                text: qsTr("FRI")
                font.pointSize: 20
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button6
                text: qsTr("SAT")
                font.pointSize: 20
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
            border.width: 5
        }

        RowLayout {
            x: 0
            y: 1814
            width: 1080
            height: 106
            Button {
                id: button7
                text: qsTr("Forcast Detail")
                font.pointSize: 20
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button8
                text: qsTr("Weather Overview")
                font.pointSize: 20
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: button9
                text: qsTr("Clothing Prep")
                font.pointSize: 20
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }

        GridLayout {
            x: 34
            y: 677
            width: 1015
            height: 179
            rows: 2
            columns: 7

            Text {
                id: time__text
                color: "#ffffff"
                text: qsTr("TIME")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignLeft
                Layout.preferredHeight: 71
                Layout.preferredWidth: 132
                font.bold: true
            }

            Text {
                id: time__text0
                color: "#ffffff"
                text: qsTr("12 am")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredHeight: 71
                Layout.preferredWidth: 132
            }

            Text {
                id: time__text1
                color: "#ffffff"
                text: qsTr("1 am")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredHeight: 71
                Layout.preferredWidth: 132
            }

            Text {
                id: time__text2
                color: "#ffffff"
                text: qsTr("2 am")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: time__text3
                color: "#ffffff"
                text: qsTr("3 am")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: time__text4
                color: "#ffffff"
                text: qsTr("4 am")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: time__text5
                color: "#ffffff"
                text: qsTr("5 am")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: temp__text
                color: "#ffffff"
                text: qsTr("TEMP")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: temp__text0
                color: "#ffffff"
                text: qsTr("71°")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: temp__text1
                color: "#ffffff"
                text: qsTr("78°")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: temp__text2
                color: "#ffffff"
                text: qsTr("73°")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: temp__text3
                color: "#ffffff"
                text: qsTr("74°")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: temp__text4
                color: "#ffffff"
                text: qsTr("69°")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: temp__text5
                color: "#ffffff"
                text: qsTr("75°")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }

            Text {
                id: precip__text
                color: "#ffffff"
                text: qsTr("PRECIP")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: precip__text0
                color: "#ffffff"
                text: qsTr("10%")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: precip__text1
                color: "#ffffff"
                text: qsTr("17%")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: precip__text2
                color: "#ffffff"
                text: qsTr("33%")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: precip__text3
                color: "#ffffff"
                text: qsTr("59%")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: precip__text4
                color: "#ffffff"
                text: qsTr("71%")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: precip__text5
                color: "#ffffff"
                text: qsTr("38%")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }
            Text {
                id: rain__text
                color: "#ffffff"
                text: qsTr("RAIN")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }

            Text {
                id: rain__text0
                color: "#ffffff"
                text: qsTr("0.01in")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }

            Text {
                id: rain__text1
                color: "#ffffff"
                text: qsTr("0.01in")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }

            Text {
                id: rain__text2
                color: "#ffffff"
                text: qsTr("0.02in")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }

            Text {
                id: rain__text3
                color: "#ffffff"
                text: qsTr("0.34in")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }

            Text {
                id: rain__text4
                color: "#ffffff"
                text: qsTr("0.56in")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }

            Text {
                id: rain__text5
                color: "#ffffff"
                text: qsTr("0.05in")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
            }

            Text {
                id: snow__text
                color: "#ffffff"
                text: qsTr("SNOW")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
                font.bold: true
            }

            Text {
                id: rain__text6
                color: "#ffffff"
                text: qsTr("0.0in")
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132
                Layout.preferredHeight: 71
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
