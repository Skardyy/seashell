import QtQuick
import Quickshell
import "root:widgets"

Item {
  anchors {
    left: parent.left
    leftMargin: 24
    verticalCenter: parent.verticalCenter
  }

  Row {
    spacing: 12
    anchors.verticalCenter: parent.verticalCenter

    OverlayLogo {
      source: "file:///usr/share/pixmaps/archlinux-logo.svg"
    }
    HyprlandWorkspaces {}
  }
}
