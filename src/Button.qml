import QtQuick 2.6


// Defines the layout of the buttons in the application
Rectangle {

    property string textStr: "button"

    function onClick(){

    }

    id: button
    color: "gray"

//    height: buttonText.height +50
//    width: buttonText.width + 50

    height: 150
    width: 700

    Text {
        anchors.centerIn: parent
        id: buttonText
        color: "white"
        text: textStr
    }

    MouseArea {
        id: mouseArea

        anchors.fill: parent

        onClicked: {
            onClick()
        }
    }

    states: State {
          name: "pressed";
          when: mouseArea.pressed

          PropertyChanges {
             target: button;
             color: "black"
          }

//          PropertyChanges {
//             target: buttonText
//             color: "gray"
//          }
    }

 }
