import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects

Window {
    width: 800
    height: 600
    visible: true
    title: qsTr("Netzwerk Monitor")

    // Dunkler Hintergrund mit Gradient
    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#1a1a2e" }
            GradientStop { position: 1.0; color: "#16213e" }
        }
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 30
        spacing: 20

        // Header mit Icon und Titel
        RowLayout {
            Layout.fillWidth: true
            spacing: 15

            Rectangle {
                width: 50
                height: 50
                radius: 25
                color: "#0f3460"
                border.color: "#00d4ff"
                border.width: 2

                Text {
                    anchors.centerIn: parent
                    text: "🌐"
                    font.pixelSize: 28
                }
            }

            Column {
                spacing: 5
                Text {
                    text: "Netzwerk Monitor"
                    font.pixelSize: 28
                    font.bold: true
                    color: "#ffffff"
                }
                Text {
                    text: "System Netzwerk Analyse Tool"
                    font.pixelSize: 14
                    color: "#a0a0a0"
                }
            }

            Item { Layout.fillWidth: true }

            // Status Indicator
            Rectangle {
                width: 120
                height: 35
                radius: 17.5
                color: "#0f3460"
                border.color: "#00ff88"
                border.width: 2

                RowLayout {
                    anchors.centerIn: parent
                    spacing: 8

                    Rectangle {
                        width: 10
                        height: 10
                        radius: 5
                        color: "#00ff88"

                        SequentialAnimation on opacity {
                            running: true
                            loops: Animation.Infinite
                            NumberAnimation { from: 1.0; to: 0.3; duration: 800 }
                            NumberAnimation { from: 0.3; to: 1.0; duration: 800 }
                        }
                    }

                    Text {
                        text: "Online"
                        color: "#00ff88"
                        font.pixelSize: 14
                        font.bold: true
                    }
                }
            }
        }

        // Buttons Grid
        GridLayout {
            Layout.fillWidth: true
            columns: 2
            rowSpacing: 15
            columnSpacing: 15

            // Button 1
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 80
                radius: 12
                color: button1Mouse.containsMouse ? "#1e4d7b" : "#0f3460"
                border.color: "#00d4ff"
                border.width: 2

                Behavior on color { ColorAnimation { duration: 200 } }

                RowLayout {
                    anchors.fill: parent
                    anchors.margins: 15
                    spacing: 15

                    Rectangle {
                        width: 50
                        height: 50
                        radius: 25
                        color: "#00d4ff"
                        opacity: 0.2

                        Text {
                            anchors.centerIn: parent
                            text: "🔗"
                            font.pixelSize: 24
                        }
                    }

                    Column {
                        Layout.fillWidth: true
                        spacing: 5
                        Text {
                            text: "Verbindungen"
                            font.pixelSize: 16
                            font.bold: true
                            color: "#ffffff"
                        }
                        Text {
                            text: "Aktive Netzwerkverbindungen"
                            font.pixelSize: 12
                            color: "#a0a0a0"
                        }
                    }
                }

                MouseArea {
                    id: button1Mouse
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        outputArea.text = "Lade aktive Verbindungen...\n"
                        outputArea.text = networkMonitor.displayActiveConnections()
                    }
                }
            }

            // Button 2
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 80
                radius: 12
                color: button2Mouse.containsMouse ? "#1e4d7b" : "#0f3460"
                border.color: "#ff6b6b"
                border.width: 2

                Behavior on color { ColorAnimation { duration: 200 } }

                RowLayout {
                    anchors.fill: parent
                    anchors.margins: 15
                    spacing: 15

                    Rectangle {
                        width: 50
                        height: 50
                        radius: 25
                        color: "#ff6b6b"
                        opacity: 0.2

                        Text {
                            anchors.centerIn: parent
                            text: "📡"
                            font.pixelSize: 24
                        }
                    }

                    Column {
                        Layout.fillWidth: true
                        spacing: 5
                        Text {
                            text: "Ping-Test"
                            font.pixelSize: 16
                            font.bold: true
                            color: "#ffffff"
                        }
                        Text {
                            text: "Verbindung testen"
                            font.pixelSize: 12
                            color: "#a0a0a0"
                        }
                    }
                }

                MouseArea {
                    id: button2Mouse
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: pingDialog.open()
                }
            }

            // Button 3
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 80
                radius: 12
                color: button3Mouse.containsMouse ? "#1e4d7b" : "#0f3460"
                border.color: "#4ecdc4"
                border.width: 2

                Behavior on color { ColorAnimation { duration: 200 } }

                RowLayout {
                    anchors.fill: parent
                    anchors.margins: 15
                    spacing: 15

                    Rectangle {
                        width: 50
                        height: 50
                        radius: 25
                        color: "#4ecdc4"
                        opacity: 0.2

                        Text {
                            anchors.centerIn: parent
                            text: "💻"
                            font.pixelSize: 24
                        }
                    }

                    Column {
                        Layout.fillWidth: true
                        spacing: 5
                        Text {
                            text: "System Info"
                            font.pixelSize: 16
                            font.bold: true
                            color: "#ffffff"
                        }
                        Text {
                            text: "IP & Hostname anzeigen"
                            font.pixelSize: 12
                            color: "#a0a0a0"
                        }
                    }
                }

                MouseArea {
                    id: button3Mouse
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        outputArea.text = "Lade System-Informationen...\n"
                        outputArea.text = networkMonitor.displayIpHostname()
                    }
                }
            }

            // Button 4
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 80
                radius: 12
                color: button4Mouse.containsMouse ? "#1e4d7b" : "#0f3460"
                border.color: "#ffd93d"
                border.width: 2

                Behavior on color { ColorAnimation { duration: 200 } }

                RowLayout {
                    anchors.fill: parent
                    anchors.margins: 15
                    spacing: 15

                    Rectangle {
                        width: 50
                        height: 50
                        radius: 25
                        color: "#ffd93d"
                        opacity: 0.2

                        Text {
                            anchors.centerIn: parent
                            text: "📄"
                            font.pixelSize: 24
                        }
                    }

                    Column {
                        Layout.fillWidth: true
                        spacing: 5
                        Text {
                            text: "Log-Datei"
                            font.pixelSize: 16
                            font.bold: true
                            color: "#ffffff"
                        }
                        Text {
                            text: "Protokoll anzeigen"
                            font.pixelSize: 12
                            color: "#a0a0a0"
                        }
                    }
                }

                MouseArea {
                    id: button4Mouse
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        outputArea.text = "Lade Log-Datei...\n"
                        outputArea.text = networkMonitor.viewLogFile()
                    }
                }
            }
        }

        // Output Area mit schönem Design
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            radius: 12
            color: "#0a0e27"
            border.color: "#2d3561"
            border.width: 2

            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 15
                spacing: 10

                RowLayout {
                    Layout.fillWidth: true

                    Text {
                        text: "📊 Ausgabe"
                        font.pixelSize: 16
                        font.bold: true
                        color: "#00d4ff"
                    }

                    Item { Layout.fillWidth: true }

                    Rectangle {
                        width: 80
                        height: 25
                        radius: 12
                        color: "#1e4d7b"

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: outputArea.text = ""

                            Text {
                                anchors.centerIn: parent
                                text: "Clear"
                                color: "#ffffff"
                                font.pixelSize: 12
                            }
                        }
                    }
                }

                ScrollView {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    clip: true

                    TextArea {
                        id: outputArea
                        readOnly: true
                        placeholderText: "Ergebnisse werden hier angezeigt...\n\nWähle eine Funktion aus den Buttons oben."
                        placeholderTextColor: "#505050"
                        wrapMode: TextArea.Wrap
                        color: "#e0e0e0"
                        font.family: "Consolas, Monaco, monospace"
                        font.pixelSize: 13
                        background: Rectangle {
                            color: "transparent"
                        }
                        selectionColor: "#00d4ff"
                        selectedTextColor: "#ffffff"
                    }
                }
            }
        }
    }

    // Stylischer Dialog für Ping
    Dialog {
        id: pingDialog
        anchors.centerIn: parent
        modal: true
        width: 400

        background: Rectangle {
            radius: 15
            color: "#16213e"
            border.color: "#ff6b6b"
            border.width: 2

            layer.enabled: true
            layer.effect: MultiEffect {
                shadowEnabled: true
                shadowColor: "#000000"
                shadowOpacity: 0.6
                shadowBlur: 20
            }
        }

        header: Rectangle {
            height: 60
            color: "transparent"

            RowLayout {
                anchors.fill: parent
                anchors.margins: 20
                spacing: 15

                Rectangle {
                    width: 40
                    height: 40
                    radius: 20
                    color: "#ff6b6b"
                    opacity: 0.2

                    Text {
                        anchors.centerIn: parent
                        text: "📡"
                        font.pixelSize: 20
                    }
                }

                Text {
                    text: "Ping-Test durchführen"
                    font.pixelSize: 18
                    font.bold: true
                    color: "#ffffff"
                }
            }
        }

        contentItem: ColumnLayout {
            spacing: 15

            Text {
                text: "Gib eine IP-Adresse oder Domain ein:"
                color: "#a0a0a0"
                font.pixelSize: 13
            }

            Rectangle {
                Layout.fillWidth: true
                height: 45
                radius: 8
                color: "#0a0e27"
                border.color: pingInput.activeFocus ? "#ff6b6b" : "#2d3561"
                border.width: 2

                Behavior on border.color { ColorAnimation { duration: 200 } }

                TextField {
                    id: pingInput
                    anchors.fill: parent
                    anchors.margins: 2
                    placeholderText: "z.B. google.com oder 8.8.8.8"
                    placeholderTextColor: "#505050"
                    color: "#ffffff"
                    font.pixelSize: 14
                    background: Rectangle {
                        color: "transparent"
                    }
                    onAccepted: pingDialog.accept()
                }
            }
        }

        footer: Rectangle {
            height: 70
            color: "transparent"

            RowLayout {
                anchors.fill: parent
                anchors.margins: 20
                spacing: 10

                Item { Layout.fillWidth: true }

                Rectangle {
                    width: 100
                    height: 40
                    radius: 8
                    color: cancelMouse.containsMouse ? "#2d3561" : "#1a1a2e"
                    border.color: "#505050"
                    border.width: 1

                    MouseArea {
                        id: cancelMouse
                        anchors.fill: parent
                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            pingInput.text = ""
                            pingDialog.reject()
                        }

                        Text {
                            anchors.centerIn: parent
                            text: "Abbrechen"
                            color: "#ffffff"
                            font.pixelSize: 13
                        }
                    }
                }

                Rectangle {
                    width: 100
                    height: 40
                    radius: 8
                    color: okMouse.containsMouse ? "#ff8585" : "#ff6b6b"

                    Behavior on color { ColorAnimation { duration: 200 } }

                    MouseArea {
                        id: okMouse
                        anchors.fill: parent
                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor
                        onClicked: pingDialog.accept()

                        Text {
                            anchors.centerIn: parent
                            text: "Start"
                            color: "#ffffff"
                            font.pixelSize: 13
                            font.bold: true
                        }
                    }
                }
            }
        }

        onAccepted: {
            if (pingInput.text.length > 0) {
                outputArea.text = "Ping wird ausgeführt zu: " + pingInput.text + "\n\n"
                outputArea.text = networkMonitor.pingTest(pingInput.text)
                pingInput.text = ""
            }
        }

        onRejected: {
            pingInput.text = ""
        }
    }
}
