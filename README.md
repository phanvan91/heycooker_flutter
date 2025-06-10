
# 🚀 Flutter Project

Project information:

- **Java**: 17  
- **Dart**: 3.8.1  
- **Flutter SDK**: 3.32.1  
---

## 📦 Environment Configuration

Before running the project, make sure to set up your environment file:

```bash
cp .env.example .env
```

---

## ⚙️ Installation

```bash
flutter pub get
```

---

## ⚡️ Generate build runner files

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

---

## ▶️ Run the application

```bash
flutter run
```

---

## 📱 Device Management

### List available emulators (AVDs):

```bash
emulator -list-avds
```

### Start an emulator:

```bash
emulator -avd {device_name}
```

---

## 🔧 Other useful commands

- Check connected devices (physical or emulators):  
  ```bash
  flutter devices
  ```

- Check Flutter environment and setup:  
  ```bash
  flutter doctor
  ```

- Build a release APK:  
  ```bash
  flutter build apk --release
  ```

- Build a release for iOS (requires macOS):  
  ```bash
  flutter build ios --release
  ```

---

## 📝 Notes

- Make sure you have the following installed and set up:  
  - Android Studio (or Xcode if you're on macOS).  
  - The `ANDROID_HOME` environment variable (for Android).  
  - Dart and Flutter plugins for your IDE (Android Studio, VS Code, Cursor, etc.).

- If you run into build issues with `build_runner`, consider cleaning the project first:  
  ```bash
  flutter clean
  ```

---

✅ **Happy coding!** 🚀  
