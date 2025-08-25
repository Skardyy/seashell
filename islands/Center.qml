import QtQuick
import Quickshell

import "root:widgets"
import "root:"

Item {
  property bool expanded: false

  id: center
  anchors.centerIn: parent

  signal toggleDashboard()

  Datetime { 
    id: content
  }
  CenterDashboard { }

  MouseArea {
    width: content.width + 20
    height: Config.barHeight
    anchors.centerIn: content
    cursorShape: Qt.PointingHandCursor
    onClicked: {
      toggleDashboard();
    }
  }
}
