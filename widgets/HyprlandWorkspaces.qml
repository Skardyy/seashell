import QtQuick
import Quickshell.Hyprland
import "root:"

Row {
  id: root
  spacing: 6
  anchors.verticalCenter: parent.verticalCenter

  property int normalSize: 12
  property int activeSize: normalSize * 3

  Repeater {
    model: Hyprland.workspaces

    delegate: Rectangle {

      width: modelData.focused ? root.activeSize : root.normalSize
      height: root.normalSize
      radius: 90
      color: modelData.focused ? Config.accent : Config.fg
      visible: modelData.id > 0

      Behavior on width {
        NumberAnimation { duration: 120; easing.type: Easing.InOutCubic }
      }
      Behavior on color {
        ColorAnimation { duration: 120; easing.type: Easing.InOutCubic }
      }

      MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: {
          modelData.activate()
        }
      }
    }
  }
}
