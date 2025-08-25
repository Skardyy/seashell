import QtQuick
import Quickshell
import Qt5Compat.GraphicalEffects
import Quickshell.Widgets

import "root:"

IconImage {
  id: logo
  implicitSize: 22

  ColorOverlay {
    anchors.fill: logo
    source: logo
    color: Config.accent
  }
}
