

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import QtQuick.Layouts 1.0

Rectangle {
    id: rectangle
    width: 1080*.6
    height: 1920*.6
    color: "#ffffff"
    border.color: "#ffffff"
    objectName: "fdd_rect"
    property int day: 0

    Image {
        id: image
        x: 0
        y: 0
        width: 1080*.6
        height: 1920*.6
        source: "rainy.jpg"
        fillMode: Image.Stretch

        Text {
            id: text_1
            objectName: "maintime_text"
            y: 58*.6
            width: 467*.6
            height: 229*.6
            color: "#ffffff"
            text: "01:00 PM"
            font.pixelSize: 120*.6
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: fdd_location__text
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

        RowLayout {
            x: 24*.6
            y: 557*.6
            width: 1033*.6
            height: 88*.6
            Button {
                id: day1__button
                text: "TODAY"
                background: Rectangle {
                    id: background_rect_1
                    color: "#354658"
                    border.color: "#ffffff"
                    border.width: 5*.6
                }
                font.pointSize: 20*.6
                Layout.fillHeight: true
                Layout.fillWidth: true
                flat: false
                onClicked: {
                    rectangle.day = 0;
                    controller.updateFDD();
                    controller.updateWOD();
                    background_rect_1.color = "#354658";
                    background_rect_2.color = "#ffffff";
                    background_rect_3.color = "#ffffff";
                    background_rect_4.color = "#ffffff";
                    background_rect_5.color = "#ffffff";
                    background_rect_6.color = "#ffffff";
                    background_rect_7.color = "#ffffff";
                }
            }


            Button {
                id: day2__button
                text: qsTr("WED")
                background: Rectangle {
                    id: background_rect_2
                    color: "#ffffff"
                    border.color: "#ffffff"
                    border.width: 5*.6
                }
                font.pointSize: 20*.6
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    rectangle.day = 1;
                    controller.updateFDD();
                    controller.updateWOD();
                    background_rect_1.color = "#ffffff";
                    background_rect_2.color = "#354658";
                    background_rect_3.color = "#ffffff";
                    background_rect_4.color = "#ffffff";
                    background_rect_5.color = "#ffffff";
                    background_rect_6.color = "#ffffff";
                    background_rect_7.color = "#ffffff";
                }
            }

            Button {
                id: day3__button
                text: qsTr("THU")
                background: Rectangle {
                    id: background_rect_3
                    color: "#ffffff"
                    border.color: "#ffffff"
                    border.width: 5*.6
                }
                font.pointSize: 20*.6
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    rectangle.day = 2;
                    controller.updateFDD();
                    controller.updateWOD();
                    background_rect_1.color = "#ffffff";
                    background_rect_2.color = "#ffffff";
                    background_rect_3.color = "#354658";
                    background_rect_4.color = "#ffffff";
                    background_rect_5.color = "#ffffff";
                    background_rect_6.color = "#ffffff";
                    background_rect_7.color = "#ffffff";
                }
            }

            Button {
                id: day4__button
                text: qsTr("FRI")
                background: Rectangle {
                    id: background_rect_4
                    color: "#ffffff"
                    border.color: "#ffffff"
                    border.width: 5*.6
                }
                font.pointSize: 20*.6
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    rectangle.day = 3;
                    controller.updateFDD();
                    controller.updateWOD();
                    background_rect_1.color = "#ffffff";
                    background_rect_2.color = "#ffffff";
                    background_rect_3.color = "#ffffff";
                    background_rect_4.color = "#354658";
                    background_rect_5.color = "#ffffff";
                    background_rect_6.color = "#ffffff";
                    background_rect_7.color = "#ffffff";
                }
            }

            Button {
                id: day5__button
                text: qsTr("SAT")
                background: Rectangle {
                    id: background_rect_5
                    color: "#ffffff"
                    border.color: "#ffffff"
                    border.width: 5*.6
                }
                font.pointSize: 20*.6
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    rectangle.day = 4;
                    controller.updateFDD();
                    controller.updateWOD();
                    background_rect_1.color = "#ffffff";
                    background_rect_2.color = "#ffffff";
                    background_rect_3.color = "#ffffff";
                    background_rect_4.color = "#ffffff";
                    background_rect_5.color = "#354658";
                    background_rect_6.color = "#ffffff";
                    background_rect_7.color = "#ffffff";
                }
            }

            Button {
                id: day6__button
                text: qsTr("SUN")
                background: Rectangle {
                    id: background_rect_6
                    color: "#ffffff"
                    border.color: "#ffffff"
                    border.width: 5*.6
                }
                font.pointSize: 20*.6
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    rectangle.day = 5;
                    controller.updateFDD();
                    controller.updateWOD();
                    background_rect_1.color = "#ffffff";
                    background_rect_2.color = "#ffffff";
                    background_rect_3.color = "#ffffff";
                    background_rect_4.color = "#ffffff";
                    background_rect_5.color = "#ffffff";
                    background_rect_6.color = "#354658";
                    background_rect_7.color = "#ffffff";
                }
            }

            Button {
                id: day7__button
                text: qsTr("MON")
                background: Rectangle {
                    id: background_rect_7
                    color: "#ffffff"
                    border.color: "#ffffff"
                    border.width: 5*.6
                }
                font.pointSize: 20*.6
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    rectangle.day = 6;
                    controller.updateFDD();
                    controller.updateWOD();
                    background_rect_1.color = "#ffffff";
                    background_rect_2.color = "#ffffff";
                    background_rect_3.color = "#ffffff";
                    background_rect_4.color = "#ffffff";
                    background_rect_5.color = "#ffffff";
                    background_rect_6.color = "#ffffff";
                    background_rect_7.color = "#354658";
                }
            }
        }

        Rectangle {
            id: rectangle1
            x: 24*.6
            y: 651*.6
            width: 1033*.6
            height: 1059*.6
            color: "#354658"
            border.color: "#ffffff"
            border.width: 5*.6
        }

        GridLayout {
            x: 34*.6
            y: 677*.6
            width: 1015*.6
            height: 1019*.6
            rows: 2
            columns: 7

            Text {
                id: time__text
                color: "#ffffff"
                text: qsTr("TIME")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignLeft
                Layout.preferredHeight: 71*.6
                Layout.preferredWidth: 132*.6
                font.bold: true
            }

            Text {
                id: time__text0
                color: "#ffffff"
                text: qsTr("12 am")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredHeight: 71*.6
                Layout.preferredWidth: 132*.6
            }

            Text {
                id: time__text1
                color: "#ffffff"
                text: qsTr("1 am")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredHeight: 71*.6
                Layout.preferredWidth: 132*.6
            }

            Text {
                id: time__text2
                color: "#ffffff"
                text: qsTr("2 am")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: time__text3
                color: "#ffffff"
                text: qsTr("3 am")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: time__text4
                color: "#ffffff"
                text: qsTr("4 am")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: time__text5
                color: "#ffffff"
                text: qsTr("5 am")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: temp__text
                color: "#ffffff"
                text: qsTr("TEMP")
                font.pixelSize: 30*.6
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: temp__text0
                objectName: "text_0_1"
                color: "#ffffff"
                text: qsTr("71°")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: temp__text1
                objectName: "text_1_1"
                color: "#ffffff"
                text: qsTr("78°")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: temp__text2
                objectName: "text_2_1"
                color: "#ffffff"
                text: qsTr("73°")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: temp__text3
                objectName: "text_3_1"
                color: "#ffffff"
                text: qsTr("74°")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: temp__text4
                objectName: "text_4_1"
                color: "#ffffff"
                text: qsTr("69°")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: temp__text5
                objectName: "text_5_1"
                color: "#ffffff"
                text: qsTr("75°")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: wind__text
                color: "#ffffff"
                text: qsTr("FEELS \nLIKE")
                font.pixelSize: 30*.6
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
                font.bold: true
            }

            Text {
                id: wind__text0
                objectName: "text_0_2"
                color: "#ffffff"
                text: qsTr("68°")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: wind__text1
                objectName: "text_1_2"
                color: "#ffffff"
                text: qsTr("68°")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: wind__text2
                objectName: "text_2_2"
                color: "#ffffff"
                text: qsTr("72°")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: wind__text3
                objectName: "text_3_2"
                color: "#ffffff"
                text: qsTr("70°")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: wind__text4
                objectName: "text_4_2"
                color: "#ffffff"
                text: qsTr("68°")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: wind__text5
                objectName: "text_5_2"
                color: "#ffffff"
                text: qsTr("73°")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: precip__text
                color: "#ffffff"
                text: qsTr("PRECIP")
                font.pixelSize: 30*.6
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: precip__text0
                objectName: "text_0_3"
                color: "#ffffff"
                text: qsTr("10%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: precip__text1
                objectName: "text_1_3"
                color: "#ffffff"
                text: qsTr("17%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: precip__text2
                objectName: "text_2_3"
                color: "#ffffff"
                text: qsTr("33%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: precip__text3
                objectName: "text_3_3"
                color: "#ffffff"
                text: qsTr("59%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: precip__text4
                objectName: "text_4_3"
                color: "#ffffff"
                text: qsTr("71%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: precip__text5
                objectName: "text_5_3"
                color: "#ffffff"
                text: qsTr("38%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }
            Text {
                id: rain__text
                color: "#ffffff"
                text: qsTr("RAIN")
                font.pixelSize: 30*.6
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: rain__text0
                objectName: "text_0_4"
                color: "#ffffff"
                text: qsTr("0.01in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: rain__text1
                objectName: "text_1_4"
                color: "#ffffff"
                text: qsTr("0.01in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: rain__text2
                objectName: "text_2_4"
                color: "#ffffff"
                text: qsTr("0.02in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: rain__text3
                objectName: "text_3_4"
                color: "#ffffff"
                text: qsTr("0.34in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: rain__text4
                objectName: "text_4_4"
                color: "#ffffff"
                text: qsTr("0.56in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: rain__text5
                objectName: "text_5_4"
                color: "#ffffff"
                text: qsTr("0.05in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: snow__text
                color: "#ffffff"
                text: qsTr("SNOW")
                font.pixelSize: 30*.6
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
                font.bold: true
            }

            Text {
                id: snow__text0
                objectName: "text_0_5"
                color: "#ffffff"
                text: qsTr("0.0in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: snow__text1
                objectName: "text_1_5"
                color: "#ffffff"
                text: qsTr("0.0in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: snow__text2
                objectName: "text_2_5"
                color: "#ffffff"
                text: qsTr("0.0in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: snow__text3
                objectName: "text_3_5"
                color: "#ffffff"
                text: qsTr("0.0in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: snow__text4
                objectName: "text_4_5"
                color: "#ffffff"
                text: qsTr("0.0in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: snow__text5
                objectName: "text_5_5"
                color: "#ffffff"
                text: qsTr("0.0in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: sleet__text
                color: "#ffffff"
                text: qsTr("PRESSURE")
                font.pixelSize: 30*.6
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
                font.bold: true
            }

            Text {
                id: sleet__text0
                objectName: "text_0_6"
                color: "#ffffff"
                text: qsTr("0.0in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: sleet__text1
                objectName: "text_1_6"
                color: "#ffffff"
                text: qsTr("0.0in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: sleet__text2
                objectName: "text_2_6"
                color: "#ffffff"
                text: qsTr("0.0in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: sleet__text3
                objectName: "text_3_6"
                color: "#ffffff"
                text: qsTr("0.0in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: sleet__text4
                objectName: "text_4_6"
                color: "#ffffff"
                text: qsTr("0.0in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: sleet__text5
                objectName: "text_5_6"
                color: "#ffffff"
                text: qsTr("0.0in")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: hum__text
                color: "#ffffff"
                text: qsTr("HUMIDITY")
                font.pixelSize: 30*.6
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
                font.bold: true
            }

            Text {
                id: hum__text0
                objectName: "text_0_7"
                color: "#ffffff"
                text: qsTr("40%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: hum__text1
                objectName: "text_1_7"
                color: "#ffffff"
                text: qsTr("48%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: hum__text2
                objectName: "text_2_7"
                color: "#ffffff"
                text: qsTr("64%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: hum__text3
                objectName: "text_3_7"
                color: "#ffffff"
                text: qsTr("100%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: hum__text4
                objectName: "text_4_7"
                color: "#ffffff"
                text: qsTr("100%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: hum__text5
                objectName: "text_5_7"
                color: "#ffffff"
                text: qsTr("43%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: cover__text
                color: "#ffffff"
                text: qsTr("CLOUD \nCOVER")
                font.pixelSize: 30*.6
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
                font.bold: true
            }

            Text {
                id: cloud__text0
                objectName: "text_0_8"
                color: "#ffffff"
                text: qsTr("52%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: cloud__text1
                objectName: "text_1_8"
                color: "#ffffff"
                text: qsTr("89%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: cloud__text2
                objectName: "text_2_8"
                color: "#ffffff"
                text: qsTr("76%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: cloud__text3
                objectName: "text_3_8"
                color: "#ffffff"
                text: qsTr("97%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: cloud__text4
                objectName: "text_4_8"
                color: "#ffffff"
                text: qsTr("96%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: cloud__text5
                objectName: "text_5_8"
                color: "#ffffff"
                text: qsTr("45%")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: uv__text
                color: "#ffffff"
                text: qsTr("UV \nINDEX")
                font.pixelSize: 30*.6
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
                font.bold: true
            }

            Text {
                id: uv__text0
                objectName: "text_0_9"
                color: "#ffffff"
                text: qsTr("0.1")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: uv__text1
                objectName: "text_1_9"
                color: "#ffffff"
                text: qsTr("0.1")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: uv__text2
                objectName: "text_2_9"
                color: "#ffffff"
                text: qsTr("0.3")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: uv__text3
                objectName: "text_3_9"
                color: "#ffffff"
                text: qsTr("0.6")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: uv__text4
                objectName: "text_4_9"
                color: "#ffffff"
                text: qsTr("0.9")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }

            Text {
                id: uv__text5
                objectName: "text_5_9"
                color: "#ffffff"
                text: qsTr("1.2")
                font.pixelSize: 40*.6
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.preferredWidth: 132*.6
                Layout.preferredHeight: 71*.6
            }




        }

    }

    Text {
        id: fdd_time__text2
        objectName: "maintemp_text"
        y: 340*.6
        width: 467*.6
        height: 229*.6
        color: "#ffffff"
        text: qsTr("78°F")
        font.pixelSize: 150*.6
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
