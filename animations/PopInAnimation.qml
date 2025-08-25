import QtQuick

ParallelAnimation {
  id: root
  property Item targetItem: parent

  SpringAnimation {
    target: root.targetItem
    property: "scale"
    to: 1.0
    spring: 8
    damping: 0.4
  }

  NumberAnimation {
    target: root.targetItem
    property: "opacity"
    to: 1.0
    duration: 60
    easing.type: Easing.OutCubic
  }
}
