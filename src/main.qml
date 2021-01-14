import QtQuick 2.6
import QtQuick.Window 2.2
import "."

Window {
    id: win
    visible: true
    visibility: "FullScreen"

    height: Screen.height
    width: Screen.width

    Rectangle {
        id: exitButton
        color: "black"

        height: 0.1 * parent.height
        width: parent.width

        Text {
            id: exitText
            color: "white"
            text: qsTr("Exit")

            MouseArea {
                id: exitMouseArea
                anchors.fill: parent

                onClicked: {
                    mainText.text = "Quit"
                    Qt.quit()
                }
            }
        }
    }

    Rectangle {
        id: display

        height: 0.2 * parent.height
        width: parent.width

        color: "gray"

        MouseArea {
            id: testMouseArea
            anchors.fill: parent

            onClicked: {
                if (mainText.text != "Hehe") {
                mainText.text = "Hehe"
                } else {
                    mainText.text = "Hello"
                }
            }
        }

        Text {
            id: mainText
            anchors.centerIn: parent
            text: "Anki reView"
        }

        }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height / 2

        textStr: "Hey ho"

        function onClick() {
            if (mainText.text != "Hehe") {
            mainText.text = "Hehe"
            } else {
                mainText.text = "Hello"
            }
        }

    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height / 2 + 500

        textStr: "Exit"

        function onClick() {
            mainText.text = "Quitted"
            Qt.quit()
        }

    }


}

