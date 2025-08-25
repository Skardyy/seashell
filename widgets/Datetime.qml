import QtQuick
import Quickshell
import "root:"

Text {
  anchors.centerIn: parent
  id: datetime
  color: Config.fg
  font.pixelSize: 15
  font.family: Config.font.family
  font.bold: true

  property date currentTime: new Date()

  text: {
    const days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    const dayName = days[currentTime.getDay()]
    const day = currentTime.getDate()
    const month = currentTime.getMonth() + 1
    const hours = currentTime.getHours()
    const minutes = currentTime.getMinutes().toString().padStart(2, '0')
    const ampm = hours >= 12 ? 'PM' : 'AM'
    const displayHours = hours % 12 || 12
    return `${dayName} ${day}/${month} - ${displayHours}:${minutes} ${ampm}`
  }

  Timer {
    interval: 1000
    running: true
    repeat: true
    onTriggered: datetime.currentTime = new Date()
  }
}
