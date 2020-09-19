
[![Usama Sarwar](https://img.shields.io/badge/Portfolio-Usama_Sarwar-000000?logo=opsgenie&logoColor=ffffff)](https://csusamasarwar.github.io) [![Usama Sarwar](https://img.shields.io/badge/Github-211F1F?logo=GitHub&logoColor=ffffff)](https://github.com/csusamasarwar/) [![Usama Sarwar](https://img.shields.io/badge/Subscribe-FF0000?logo=Youtube&logoColor=ffffff)](https://www.youtube.com/UsamaSarwar?sub_confirmation=1) [![Usama Sarwar](https://img.shields.io/badge/Connect-0077B5?logo=Linkedin&logoColor=ffffff)](https://www.linkedin.com/in/csUsamaSarwar/)  [![Usama Sarwar](https://img.shields.io/badge/Follow-1877F2?logo=Facebook&logoColor=ffffff)](https://www.facebook.com/csUsamaSarwar/)  [![Usama Sarwar](https://img.shields.io/badge/Follow-08A0E9?logo=Twitter&logoColor=ffffff)](https://www.twitter.com/csUsamaSarwar/)  [![Usama Sarwar](https://img.shields.io/badge/Follow-DD2A7B?logo=Instagram&logoColor=ffffff)](https://www.instagram.com/csUsamaSarwar/) [![Usama Sarwar](https://img.shields.io/badge/Gmail-D44638?logo=gmail&logoColor=ffffff)](mailto:UsamaSarwarOfficial@gmail.com) [![Usama Sarwar](https://img.shields.io/badge/Chat-1877F2?logo=Messenger&logoColor=ffffff)](https://m.me/csUsamaSarwar/) [![Usama Sarwar](https://img.shields.io/badge/Chat-25D366?logo=WhatsApp&logoColor=ffffff)](https://wa.me/923100007773?text=%23Github) [![Usama Sarwar](https://img.shields.io/badge/Support_Me-784fff?logo=buy-me-a-coffee&logoColor=ffffff)](https://wa.me/923100007773?text=Thank%20you%20for%20supporting%20me%20%E2%9D%A4%0ABank%20Account%20Details%0ATitle%3A%20USAMA%20SARWAR%0AIBAN%3A%20PK90HABB0022417901576303)

![Flutter](https://i.imgur.com/tq2qQaH.jpg)

# FLUTTER NOTES BY USAMA SARWAR
#### Q U I C K L I N K S 
[![HEALTH](https://img.shields.io/badge/FLUTTER-HEALTH_STATUS-000000)](#flutter-health-status) [![Usama Sarwar](https://img.shields.io/badge/CREATE-000000)](#create-app) [![Usama Sarwar](https://img.shields.io/badge/RUN-000000)](#run-app) [![Usama Sarwar](https://img.shields.io/badge/BUILD-000000)](#build-app) 

[![Usama Sarwar](https://img.shields.io/badge/Hide_Status_Bar-000000)](#hide-status-bar) [![Usama Sarwar](https://img.shields.io/badge/Orientation-000000)](#lock-orientation) [![Usama Sarwar](https://img.shields.io/badge/Loading-000000)](#loading-indicator) [![Usama Sarwar](https://img.shields.io/badge/Dialog-000000)](#show-dialog-alert)

## Flutter Health Status
> _Run this command to check Flutter Status on your device_
```bash
flutter doctor
```
> _Run this command to check available devices for Flutter_
```bash
flutter devices
```
> _Run this command to upgrade Flutter_
```bash
flutter upgrade
```
> _Run this command to configure Flutter_
```bash
flutter config
```
> _Run this command to check Flutter Channel_
```bash
flutter channel
```
> _Run this command to switch to Flutter Channel Beta, likewise you can switch back to_ `stable`
```bash
flutter channel beta
```
> _Run this command to Repair Pub Cache_
```bash
flutter pub cache repair
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Create App
> _Run this command to create an app, just replace `app_name` with your desired app name but without spaces and special characters except_ `Underscore(_)`
```bash
flutter create app_name
```
#### Specify Package Name
> _Create your Flutter app with this command to customize your app's package name; Package name from the below command will be_ `com.company.app_name` _You can change it accordingly_ 
```bash
flutter create --org com.company app_name
```
#### Create Command for Release
```bash
flutter create --androidx -t app --org com.company -a kotlin -i swift app_name
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Run App
> _Run this command to run a Flutter Project_
```dart
flutter run
```
> _Run this command to check runner logs while running_
```dart
flutter run -v
```
> _Run this command to run the project on specific device when there are muliple devices available replace_ `device_ID` _with your device ID_
> _Sample: `flutter run -d chrome` to run flutter web project on Chrome Browser_ 
```dart
flutter run -d device_ID
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Build App
> _Run this command to build Android .apk file_
```dart
flutter build apk
```
> _Run this command to build Android .apk file in release mode_
```dart
flutter build apk --release
```
> _Run this command to build Web root folder in release mode_
```dart
flutter build web --release
```
#### Generate App Bundles
```dart
flutter build appbundle --target-platform android-arm,android-arm64,android-x64
```
#### Split the APKs per ABI
> _Run this command to reduce the APK Size to the minimum_
```dart
flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Loading Indicator
```dart
class SomeWidget extends StatefulWidget {
  @override
  _SomeWidgetState createState() => _SomeWidgetState();
}

class _SomeWidgetState extends State<SomeWidget> {
  Future future;

  @override
  void initState() {
    future = Future.delayed(Duration(seconds: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        return snapshot.connectionState == ConnectionState.done
            ? Text('Loaded')
            : CircularProgressIndicator();
      },
    );
  }
}
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Hide Status Bar
```dart
// Import Services Package
import 'package:flutter/services.dart'; 

void main() {
	// Hide Status bar and Bottom Navigation Bar
    SystemChrome.setEnabledSystemUIOverlays([]);
}
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Lock Orientation
```dart
// Import library
import 'package:flutter/services.dart';
  // Add this into your main()
  await SystemChrome.setPreferredOrientations([
	// Locks Device orientation to always potrait
    DeviceOrientation.portraitUp,
  ]);
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Show Dialog Alert
```dart
showDialog<void>(
  context: context,
  barrierDismissible: false,
  builder: (BuildContext context) {
    return AlertDialog(
      title: Text('Alert Title'),
      content: Text('My Alert Msg'),
      actions: <Widget>[
        FlatButton(
          child: Text('Ask me later'),
          onPressed: () {
            print('Ask me later pressed');
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('Cancel'),
          onPressed: () {
            print('Cancel pressed');
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('OK'),
          onPressed: () {
            print('OK pressed');
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  },
);
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
