# 📱 QR Code Scanner & Generator App - Flutter

A sleek, modern, cross-platform mobile application built with **Flutter & Dart** for high-speed QR code scanning and real-time QR code generation.

---

## ✨ Features

- **⚡ Fast QR & Barcode Scanning**: Powered by `mobile_scanner` using native device camera APIs and machine learning detection.
- **🎨 Dynamic QR Code Generator**: Generates vector-rendered QR codes instantly on-the-fly as you type using `qr_flutter`.
- **📷 Camera Permission Handling**: Graceful runtime permission handling and lifecycle transitions.
- **📱 Custom Launcher Icon**: Beautiful multi-density app icon configured across all screen resolutions.
- **🚀 Optimized Android Release**: Tuned Gradle build configurations producing a lightweight, high-performance APK.

---

## 🛠️ Tech Stack & Packages

- **Framework**: [Flutter](https://flutter.dev) (v3.13+)
- **Language**: [Dart](https://dart.dev)
- **Packages**:
  - [`mobile_scanner`](https://pub.dev/packages/mobile_scanner) — Camera-based scanning engine
  - [`qr_flutter`](https://pub.dev/packages/qr_flutter) — Vector QR rendering widget
  - [`flutter_launcher_icons`](https://pub.dev/packages/flutter_launcher_icons) — App branding pipeline

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK installed ([Setup instructions](https://docs.flutter.dev/get-started/install))
- Android Studio / VS Code with Flutter extension
- Connected Android device or emulator with camera support

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/<your-username>/<repo-name>.git
   cd <repo-name>
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run on your connected device:**
   ```bash
   flutter run
   ```

4. **Build a production APK:**
   ```bash
   flutter build apk --release
   ```
   The APK will be generated at:
   `build/app/outputs/flutter-apk/app-release.apk`

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
