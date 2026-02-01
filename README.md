# 🌐 Qt Netzwerk Monitor

Ein modernes Netzwerk-Analyse-Tool mit schöner Benutzeroberfläche, entwickelt mit Qt6 und QML.

![Qt Version](https://img.shields.io/badge/Qt-6.8-green)
![C++](https://img.shields.io/badge/C++-17-blue)
![Platform](https://img.shields.io/badge/platform-Windows%20%7C%20Linux-lightgrey)

## ✨ Features

- 🔗 **Aktive Verbindungen anzeigen** - Zeigt alle aktiven Netzwerkverbindungen an
- 📡 **Ping-Test** - Teste die Verbindung zu einer IP-Adresse oder Domain
- 💻 **System-Info** - Zeigt IP-Adresse und Hostname des Systems an
- 📄 **Log-Datei** - Zeigt gespeicherte Netzwerk-Logs an
- 🎨 **Modernes UI** - Dunkles Theme mit Glassmorphism-Effekten
- 🌍 **UTF-8 Unterstützung** - Korrekte Darstellung von Umlauten

 

## 🛠️ Technologien

- **Qt 6.8+** - Framework
- **QML** - UI
- **C++17** - Backend
- **CMake** - Build System

## 📋 Voraussetzungen

- Qt 6.8 oder höher
- CMake 3.16+
- C++17 kompatibler Compiler
  - Windows: MSVC 2019+
  - Linux: GCC 7+ oder Clang 5+

## 🚀 Installation

### 1. Repository klonen
```bash
git clone https://github.com/dein-username/qt-network-monitor.git
cd qt-network-monitor
```

### 2. Build-Ordner erstellen
```bash
mkdir build
cd build
```

### 3. CMake konfigurieren
```bash
cmake ..
```

### 4. Projekt kompilieren
```bash
cmake --build .
```

### 5. Ausführen
```bash
# Windows
./appNetworkMonitoring.exe

# Linux
./appNetworkMonitoring
```

## 📁 Projektstruktur

```
NetworkMonitoring/
├── CMakeLists.txt          # CMake Konfiguration
├── main.cpp                # Haupt-Einstiegspunkt
├── Main.qml                # UI Definition
├── networkmonitor.h        # Header für Netzwerk-Funktionen
├── networkmonitor.cpp      # Implementierung
├── .gitignore              # Git Ignore-Datei
└── README.md               # Diese Datei
```

## 🎨 UI Features

- **Farbcodierte Buttons** für verschiedene Funktionen
- **Hover-Effekte** und Animationen
- **Responsive Design** passt sich an Fenstergrößen an
- **Monospace-Font** für bessere Log-Lesbarkeit
- **Pulsierender Status-Indikator**

## 🔧 Verwendung

1. **Verbindungen anzeigen**: Klicke auf den blauen Button, um alle aktiven Netzwerkverbindungen anzuzeigen
2. **Ping-Test**: Klicke auf den roten Button, gib eine Domain oder IP ein und teste die Verbindung
3. **System-Info**: Klicke auf den türkisen Button für Hostname und IP-Adresse
4. **Log-Datei**: Klicke auf den gelben Button, um gespeicherte Logs anzuzeigen

## 🐛 Bekannte Probleme

- Unter Windows werden einige Befehle Administratorrechte benötigen
- Log-Datei wird nur erstellt, wenn sie manuell angelegt wurde

## 🤝 Beitragen

Contributions sind willkommen! 

1. Fork das Projekt
2. Erstelle einen Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit deine Änderungen (`git commit -m 'Add some AmazingFeature'`)
4. Push zum Branch (`git push origin feature/AmazingFeature`)
5. Öffne einen Pull Request

## 📝 Lizenz

Dieses Projekt ist unter der MIT Lizenz lizenziert - siehe [LICENSE](LICENSE) Datei für Details.

## 👨‍💻 Autor

Dein Name - [@dein-github](https://github.com/dein-username)

## 🙏 Danksagungen

- Qt Framework für die exzellente Dokumentation
- Community für Feedback und Verbesserungsvorschläge

---

⭐ Wenn dir dieses Projekt gefällt, gib ihm einen Stern auf GitHub!