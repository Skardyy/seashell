import QtQuick
import Quickshell

import "root:widgets"
import "root:islands"

PanelWindow {
  id: root
  exclusionMode: ExclusionMode.Normal
  exclusiveZone: Config.barHeight - 12

  implicitHeight: Config.barHeight
  anchors {
    top: true 
    left: true
    right: true
  }
  color: "transparent"

  Rectangle {
    anchors.fill: parent
    color: Config.surface

    Left {}
    Center {}
    Right {}
  }
}
