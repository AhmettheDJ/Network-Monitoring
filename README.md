    🌐 Qt Netzwerk Monitor
Ein modernes Netzwerk-Analyse-Tool mit schöner Benutzeroberfläche, entwickelt mit Qt6 und QML.
https://img.shields.io/badge/Qt-6.8-green
https://img.shields.io/badge/C++-17-blue
https://img.shields.io/badge/platform-Windows%20%7C%20Linux-lightgrey![Uploading platform-Windows _ Linux-lightgrey.svg…]()


✨ Features

🔗 Aktive Verbindungen anzeigen - Zeigt alle aktiven Netzwerkverbindungen an
📡 Ping-Test - Teste die Verbindung zu einer IP-Adresse oder Domain
💻 System-Info - Zeigt IP-Adresse und Hostname des Systems an
📄 Log-Datei - Zeigt gespeicherte Netzwerk-Logs an
🎨 Modernes UI - Dunkles Theme mit Glassmorphism-Effekten
🌍 UTF-8 Unterstützung - Korrekte Darstellung von Umlauten

🛠️ Technologien

Qt 6.8+ - Framework
QML - UI
C++17 - Backend
CMake - Build System

📋 Voraussetzungen

Qt 6.8 oder höher
CMake 3.16+
C++17 kompatibler Compiler

Windows: MSVC 2019+
Linux: GCC 7+ oder Clang 5+

1. Repository klonen
bashgit clone https://github.com/dein-username/qt-network-monitor.git
cd qt-network-monitor
2. Build-Ordner erstellen
bashmkdir build
cd build
3. CMake konfigurieren
bashcmake ..
4. Projekt kompilieren
bashcmake --build .
5. Ausführen
bash# Windows
./appNetworkMonitoring.exe

# Linux
./appNetworkMonitoring
📁 Projektstruktur
NetworkMonitoring/

├── CMakeLists.txt           
├── main.cpp                
├── Main.qml                
├── networkmonitor.h       
├── networkmonitor.cpp      
├── .gitignore             
└── README.md               
🎨 UI Features

Farbcodierte Buttons für verschiedene Funktionen
Hover-Effekte und Animationen
Responsive Design passt sich an Fenstergrößen an
Monospace-Font für bessere Log-Lesbarkeit
Pulsierender Status-Indikator

🔧 Verwendung

Verbindungen anzeigen: Klicke auf den blauen Button, um alle aktiven Netzwerkverbindungen anzuzeigen
Ping-Test: Klicke auf den roten Button, gib eine Domain oder IP ein und teste die Verbindung
System-Info: Klicke auf den türkisen Button für Hostname und IP-Adresse
Log-Datei: Klicke auf den gelben Button, um gespeicherte Logs anzuzeigen

🐛 Bekannte Probleme

Unter Windows werden einige Befehle Administratorrechte benötigen
Log-Datei wird nur erstellt, wenn sie manuell angelegt wurde

🤝 Beitragen
Contributions sind willkommen!

Fork das Projekt
Erstelle einen Feature Branch (git checkout -b feature/AmazingFeature)
Commit deine Änderungen (git commit -m 'Add some AmazingFeature')
Push zum Branch (git push origin feature/AmazingFeature)
Öffne einen Pull Request

📝 Lizenz
Dieses Projekt steht momentan unter kein Lizenz
👨‍💻 Autor
Dein Name - @AhmettheDJ
🙏 Danksagungen

Qt Framework für die exzellente Dokumentation
Community für Feedback und Verbesserungsvorschläge
