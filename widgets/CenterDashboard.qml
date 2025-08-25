import QtQuick
import Quickshell

import "root:animations"
import "root:"

PanelWindow {
  property bool expanded: false

  Connections {
    target: center
    function onToggleDashboard() {
      if (expanded) {
        expanded = false;
        collapseAnimation.start();
      } else {
        expanded = true;
        expandAnimation.start();
      }
    }
  }

  id: dashboardRoot
  implicitHeight: 0
  exclusionMode: ExclusionMode.Normal
  width: Screen.width * 0.4
  anchors {
    top: true
  }
  margins {
    top: 6
  }
  color: "transparent"
  visible: implicitHeight > 0

  Rectangle {
    anchors.fill: parent
    color: Config.surface
    bottomLeftRadius: Config.radius
    bottomRightRadius: Config.radius
  }

  Item {
    id: dashboardContent
    opacity: 0
    scale: 0.7
    anchors {
      fill: parent
      margins: 15
      topMargin: 10
    }

    PopInAnimation {
      targetItem: dashboardContent
      id: popInAnimation
    }

    PopOutAnimation {
      targetItem: dashboardContent
      id: popOutAnimation
    }

    Timer {
      id: contentDelayTimer
      interval: 60
      onTriggered: popInAnimation.start()
    }

    Text {
      anchors.centerIn: parent
      text: "Dashboard Content"
      color: "#666666"
      font.family: "Ubuntu Nerd Font"
      font.pixelSize: 14
      horizontalAlignment: Text.AlignHCenter
    }
  }


  SequentialAnimation {
    id: expandAnimation
    NumberAnimation {
      target: dashboardRoot
      property: "implicitHeight"
      to: 300
      duration: 120
      easing.type: Easing.OutQuart
    }
    ScriptAction {
      script: popInAnimation.start()
    }
  }
  SequentialAnimation {
    id: collapseAnimation
    ScriptAction {
      script: popOutAnimation.start()
    }
    NumberAnimation {
      target: dashboardRoot
      property: "implicitHeight"
      to: 0
      duration: 120
      easing.type: Easing.InQuart
    }
  }
}
