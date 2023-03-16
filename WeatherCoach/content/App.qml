import QtQuick 6.2
import QtQuick.Controls 6.2
import WeatherCoach

WindowWOD {
    width: Constants.width
    height: Constants.height

    visible: true

    SwipeViewWOD {
        id: swipeView
        anchors.top: tabBar.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        currentIndex: tabBar.currentIndex

        Screen01WOD {
        }

        Screen02WOD {
        }
    }

    TabBarWOD {
        anchors.left: parent.left
        anchors.right: parent.right

        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButtonWOD {
            text: qsTr("Page 1")
        }
        TabButtonWOD {
            text: qsTr("Page 2")
        }
    }
}
