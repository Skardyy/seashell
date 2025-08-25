import QtQuick
import Quickshell

import "root:widgets"

Item {
  anchors {
    right: parent.right
    rightMargin: 24
    verticalCenter: parent.verticalCenter
  }

  Row {
    spacing: 12
    anchors.verticalCenter: parent.verticalCenter
    anchors.right: parent.right

    OverlayLogo {
      source: Qt.resolvedUrl("../svgs/wifi.svg")
    }
    OverlayLogo {
      source: Qt.resolvedUrl("../svgs/bluetooth.svg")
    }
  }
}
