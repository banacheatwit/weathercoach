import QtQuick 6.2
import QtQuick.Window 6.2
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: mainwin
    width: 1080*.6
    height: 1920*.6
    visible: true
    title: qsTr("WeatherCoach")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        ForecastDetail {
            id: page1
        }

        WeatherOverview{
            id: page2

        }

        ClothingPrep{
            id: page3
        }

    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Forecast Detail")
        }
        TabButton {
            text: qsTr("Weather Overview")
        }
        TabButton {
            text: qsTr("Clothing Preparation")
        }
    }

}
