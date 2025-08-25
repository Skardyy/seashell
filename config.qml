pragma Singleton
import QtQuick

QtObject {
  readonly property color bg: "#15161B"
  readonly property color bg2: "#14161f"
  readonly property color surface: "#1C1F2E"
  readonly property color surface2: "#08090D"
  readonly property color border: "#A6ACCD"
  readonly property color hover: "#1E1F24"
  readonly property color fg: "#ffffff"
  readonly property color accent: "#facc75"

  readonly property int barHeight: 36
  readonly property int radius: 36

  readonly property QtObject font: QtObject {
    readonly property string family: "Ubuntu Nerd Font"
    readonly property int small: 12
    readonly property int normal: 14
  }
}
