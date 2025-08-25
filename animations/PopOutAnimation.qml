import QtQuick

ParallelAnimation {
  id: root
  property Item targetItem: parent

  SpringAnimation {
    target: root.targetItem
    property: "scale"
    to: 0.7
    spring: 12
    damping: 0.6
  }

  NumberAnimation {
    target: root.targetItem
    property: "opacity"
    to: 0.0
    duration: 80
    easing.type: Easing.InOutCubic
  }
}
