

###### Q U I C K L I N K S
[![fluttercapsule](https://img.shields.io/badge/Contribute-Now-211F1F?logo=GitHub&logoColor=ffffff)](https://github.com/UsamaSarwar/fluttercapsule/blob/master/README.md) 
![Flutter](https://i.imgur.com/e9V2Zf7.jpg)
[![HEALTH](https://img.shields.io/badge/FLUTTER-HEALTH_STATUS-64DD17)](#flutter-health-status) [![Usama Sarwar](https://img.shields.io/badge/FLUTTER-CREATE-304FFE)](#create-app) [![Usama Sarwar](https://img.shields.io/badge/FLUTTER-RUN-2962FF)](#run-app) [![Flutter Signing App](https://img.shields.io/badge/Signing_App-Google_Play-64DD17)](#signing-app) [![Flutter Packages](https://img.shields.io/badge/FLUTTER-PACKAGES-0091EA)](#Creating-a-plugin/dependency-in-Flutter)  [![Usama Sarwar](https://img.shields.io/badge/FLUTTER-BUILD-0091EA)](#build-app)
##### SYSTEM SETTINGS
[![Usama Sarwar](https://img.shields.io/badge/Status_Bar-Settings-DD2C00)](#status-bar) [![Usama Sarwar](https://img.shields.io/badge/Screen_Orientation-Settings-FF6D00)](#lock-orientation) 
##### WIDGETS
[![Usama Sarwar](https://img.shields.io/badge/Loading-d50000)](#loading-indicator) [![Usama Sarwar](https://img.shields.io/badge/Dialog-263238)](#show-dialog-alert) [![Usama Sarwar](https://img.shields.io/badge/Form-AA00FF)](#form) [![Kishor Kc](https://img.shields.io/badge/Slider-64DD17)](#slider)
##### BEGINNER LEVEL FLUTTER APPS
[![Usama Sarwar](https://img.shields.io/badge/Well_Commented-Basic_App-AA00FF)](#basic-app) [![Usama Sarwar](https://img.shields.io/badge/Stateless_Widget-C51162)](#stateless-widget) [![Usama Sarwar](https://img.shields.io/badge/Stateful_Widget-d50000)](#stateful-widget) [![Usama Sarwar](https://img.shields.io/badge/App-Navigation-00C853)](#app-navigation) [![Usama Sarwar](https://img.shields.io/badge/ListView-Builder-C51162)](#listview-builder)
[![Splash Screen](https://img.shields.io/badge/SplashScreen-AA00FF)](#splashscreen) 
[![Kishor Kc](https://img.shields.io/badge/Default_Flutter-Theme-FF6D00)](#default-flutter-theme)
[![Kishor Kc](https://img.shields.io/badge/SignUp_Form-Validation-d50000)](#signup-form-validation)
[![Kishor Kc](https://img.shields.io/badge/Implement_Search-C51162)](#implement-search)

## Flutter Health Status
_Run this command to check Flutter Status on your device_
```bash
flutter doctor
```
 _Run this command to check available devices for Flutter_
```bash
flutter devices
```
 _Run this command to upgrade Flutter_
```bash
flutter upgrade
```
 _Run this command to configure Flutter_
```bash
flutter config
```
 _Run this command to check Flutter Channel_
```bash
flutter channel
```
 _Run this command to switch to Flutter Channel Beta, likewise you can switch back to_ `stable`
```bash
flutter channel beta
```
 _Run this command to Repair Pub Cache_
```bash
flutter pub cache repair
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Create App
_Run this command to create an app, just replace `app_name` with your desired app name but without spaces and special characters except_ `Underscore(_)`
```bash
flutter create app_name
```
#### Specify Package Name
_Create your Flutter app with this command to customize your app's package name; Package name from the below command will be_ `com.company.app_name` _You can change it accordingly_ 
```bash
flutter create --org com.company app_name
```
#### Create Command for Release
```bash
flutter create --androidx -t app --org com.company -a kotlin -i swift app_name
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Run App
_Run this command to run a Flutter Project_
```dart
flutter run
```
_Run this command to check runner logs while running_
```dart
flutter run -v
```
_Run this command to run the project on specific device when there are muliple devices available replace_ `device_ID` _with your device ID_
_Sample: `flutter run -d chrome` to run flutter web project on Chrome Browser_ 
```dart
flutter run -d device_ID
```
_Run this command to run the flutter web project on specific port of localhost_
_Sample: `flutter run -d chrome --web-hostname localhost --web-port 8080` to run flutter web project on port `localhost:8080` on Web Browser_ 
```dart
flutter run -d chrome --web-hostname localhost --web-port [port_number]
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Signing App
### Step 1
**Create a keystore**
If you have an existing keystore, skip to the next step. If not, create one by running the following at the command line:
```bash
./keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
```
**OR** _Run this if get error_
```bash
.\keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
```
**Note:** Keep this file private; do not check it into public source control. 
**Note:** keytool may not be in your path. It is part of the `Java JDK`, which is installed as part of Android Studio. For the concrete path, run `flutter doctor -v` and see the path printed after `Java binary at:` and then use that fully qualified path replacing java with keytool.

### Step 2
Reference the keystore from the app Create a file named **key.properties**`<Project>/android/key.properties` that contains a reference to your keystore: 
Add these lines in `/android/key.properties`
```properties
storePassword= password from previous step
keyPassword= password from previous step
keyAlias= key
storeFile= location of the key store file, e.g. /Users/username/key.jks
```
### Step 3
_Add these lines above android{ } (near line 16) in `/android/app/build.gradle`_
```gradle
def keystorePropertiesFile = rootProject.file("key.properties") 
def keystoreProperties = new Properties() 
keystoreProperties.load(new FileInputStream(keystorePropertiesFile)) 
```
_Add these lines in android{ }  in `/android/app/build.gradle`_
```
signingConfigs { 
	release { 
	keyAlias keystoreProperties['keyAlias']
	keyPassword keystoreProperties['keyPassword']
	storeFile file(keystoreProperties['storeFile'])
	storePassword keystoreProperties['storePassword'] 
	} 
} 
buildTypes { 
	release { 
	signingConfig signingConfigs.release 
	} 
}
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)

## Creating a plugin/dependency in Flutter
### Step 1
_Create a package first, using the following command:_
```
flutter create --template-plugin --org --com.example --template= plugin --platform= android, ios, -a java -i objc plugin_name
```
_**Note:** you can use the any language you prefer for android and ios._
To add web support in your plugin use the following command:
```
flutter create --template=plugin --platform=web .
```
### Step 2
Add the plugin code in _```plugin_name.dart```_ and also arrange your _```pubspec.yaml```_ and add following fields:
```
name: name of your plugin project
description: description of the plugin project
version: version of the package to be hosted on pub.dev
author: name of the author
homepage: link of the package's homepage
documentation: link of the plugin documentation
publish_to: specify where to publish the plugin it should be a link, if you do not want to publish it then place none instead of a link

environment:
    sdk:
       flutter:
      
dependencies:
// list any dependencies used by the plugin

dev_dependencies:
// list any dev dependencies used by the plugin

```
### Step 3
_Publishing the plugin package:_
```
flutter publish --dry-run # this command will help you verify that everything is as intended
flutter pub publish # it will publish the plugin on pub.dev
```
Now, you have successfully published your plugin. You can check it by using the following link:
```
https://pub.dev/packages/YOUR_PACKAGE_NAME
```

[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)

## Build App
_Run this command to build Android .apk file_
```dart
flutter build apk
```
_Run this command to build Android .apk file in release mode_
```dart
flutter build apk --release
```
_Run this command to build Web root folder in release mode_
```dart
flutter build web --release
```
#### Generate App Bundles
```dart
flutter build appbundle --target-platform android-arm,android-arm64,android-x64
```
#### Split the APKs per ABI
_Run this command to reduce the APK Size to the minimum_
```dart
flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi
```
#### Flutter Build Web Release
_When running and building apps for the web, you can choose between two different renderers. The --web-renderer command line option takes one of three values, auto, html, or canvaskit._
<br>
**HTML renderer**
<br>
Uses a combination of HTML elements, CSS, Canvas elements, and SVG elements. This renderer has a smaller download size.
```dart
flutter build web --web-renderer html --release
```
**CanvasKit renderer**
<br>
This renderer is fully consistent with Flutter mobile and desktop, has faster performance with higher widget density, but adds about 2MB in download size.
```dart
flutter build web --web-renderer canvaskit --release
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Basic App
_This is a very basic beginner level app that is showing two List Tiles in its body. To run this code copy and paste it in_ `lib/main.dart`
```dart
// Importing Material Library
import 'package:flutter/material.dart';

// Main Function of this App
// We will call runApp that is a built-in function that will run the App
void main() => runApp(
      // Material App is the outer most Parent Widget that will wrap the child widgets
      MaterialApp(
        // To remove the Debug Tag from the App
        debugShowCheckedModeBanner: false,
        // Setting App Theme data
        theme: ThemeData(
          primarySwatch: Colors.red,),
        // Title is the title of the app
        title: 'Messenger',
        // Home widget of Material App
        home: Scaffold(
          // App Bar of the App
          appBar: AppBar(
            // Title of the App Bar
            title: Text('Inbox'),
            // This is the leading icon on the App Bar
            leading: Icon(Icons.menu_open),
            // These are action icon(s) on the App Bar
            actions: [
              // padding for wraping with some space
              Padding(
                // padding: EdgeInsets.all(8.0), // Padding value set to 8.0 on all sides
                padding: EdgeInsets.only(right: 15.0), // Padding value set to 15.0 on right side
                child: Icon(Icons.create_sharp), // Added a favourite icon
              ),
            ],
          ),
          // This is the body of Scafold
          body: Column(
            // Alignment across main (Vertical) Axis
            mainAxisAlignment: MainAxisAlignment.start,
            // Alignment across cross (Horizontal) Axis
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // For setting some space around Card
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                // Creating Card
                child: Card(
                  elevation: 5.0,
                  // Setting List Tile
                  child: ListTile(
                    // Setting Leading Icon
                    leading: Icon(
                      Icons.account_circle,
                      // Setting Size of the Icon
                      size: 40.0,
                      // Setting Icon Color
                      color: Colors.amber,
                    ),
                    // Setting Title of the List Tile
                    title: Text('Usama Sarwar'),
                    // Setting Sub-Title of the List Tile
                    subtitle: Text('Happy Birthday to you 🎂'),
                    // Setting Trailing Icon
                    trailing: Icon(
                      Icons.send,
                      color: Colors.amberAccent),),),),
              // For setting some space around Card
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                // Creating Card
                child: Card(
                  elevation: 5.0,
                  // Setting List Tile
                  child: ListTile(
                    // Setting Leading Icon
                    leading: Icon(
                      Icons.account_circle,
                      // Setting Size of the Icon
                      size: 40.0,
                      // Setting Icon Color
                      color: Colors.grey[700],
                    ),
                    // Setting Title of the List Tile
                    title: Text('Ayesha Ali'),
                    // Setting Sub-Title of the List Tile
                    subtitle: Text('Let\'s meet at 10\'O Clock ⌚'),
                    // Setting Trailing Icon
                    trailing: Icon(
                      Icons.send,
                      color: Colors.grey[700],),),),),],),),),);
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)

## Stateless Widget
In Stateless widget the state of app can't change. Here is an example of a counter app in which you can observe the chnaging value in the console but on UI it will not render. To render the value accourdingly you will have to use Stateful Widget that is the next example.
```dart
// Importing Material Library
import  'package:flutter/material.dart';

// Main Function of this App
// We will call runApp that is a built-in function that will run the App
void  main() => runApp(MyApp());

class  MyApp  extends  StatelessWidget {

// Initilized a variable
static  int number = 1;

// Function for performing task
void  increment() {
number++;
}

@override
Widget  build(BuildContext context) {
return  // Material App is the outer most Parent Widget that will wrap the child widgets
MaterialApp(
// To remove the Debug Tag from the App
debugShowCheckedModeBanner: false,

// Setting App Theme data
theme: ThemeData(
primarySwatch: Colors.red,
),

// Title is the title of the app
title: 'Stateless Widget',

// Home widget of Material App
home: Scaffold(

// App Bar of the App
appBar: AppBar(

// Title of the App Bar
title: Text('Stateless Widget Example'),

// These are action icon(s) on the App Bar
),
// Body of Scafold
body: Center(
// Display a text in the center
// This is how to display a text
child: Text(
// Concatination of a String with some variable
'Number: $number', // However this will not update
// Styling text
style: TextStyle(
// Setting fontSize
fontSize: 25.0,),),),

// FloatingActionButton Added
floatingActionButton: FloatingActionButton(
// Setting Icon
child: Icon(Icons.add),
// Setting action on button when it is pressed
onPressed: () {
// Funtion for the incrementation
increment();

// To check the value of number on console
print('Number: $number');
},),),);}}
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Stateful Widget
In Stateful Widget, the state of the app can be changed. It renders everytime whenver it detectects the change in the value of some variable. Here is the sample code.
```dart
// Importing Material Library
import  'package:flutter/material.dart';

// Main Function of this App
// We will call runApp that is a built-in function that will run the App
void  main() => runApp(MyApp());
class  MyApp  extends  StatefulWidget {
@override
_MyAppState  createState() => _MyAppState();
}
class  _MyAppState  extends  State<MyApp> {

// Initilized a variable
static  int number = 1;

// Increment Function
void  increment() {
// Calling SetState will render the User Interface and update it accordingly
setState(() {
number++;
});}

@override
Widget  build(BuildContext context) {
return  // Material App is the outer most Parent Widget that will wrap the child widgets
MaterialApp(
// To remove the Debug Tag from the App
debugShowCheckedModeBanner: false,

// Setting App Theme data
theme: ThemeData(
primarySwatch: Colors.red,
),

// Title is the title of the app
title: 'Stateful Widget',

// Home widget of Material App
home: Scaffold(

// App Bar of the App
appBar: AppBar(

// Title of the App Bar
title: Text('Stateful Widget Example'),
// These are action icon(s) on the App Bar
),

// Body of Scafold
body: Center(
// Display a text in the center
// This is how to display a text
child: Text(
// Concatination of a String with some variable
'Number: $number', // However this will not update
// Styling text
style: TextStyle(
// Setting fontSize
fontSize: 25.0,
),),),
// FloatingActionButton Added
floatingActionButton: FloatingActionButton(
// Setting Icon
child: Icon(Icons.add),
// Setting action on button when it is pressed
onPressed: () {
// Funtion for the incrementation
increment();

// To check the value of number on console
print('Number: $number');},),),);}}
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## App Navigation
Navigator in Flutter application manages the routes and screen navigation. According to official docs: _The navigator manages a stack of Route objects and provides methods for managing the stack, like Navigator.push and Navigator.pop._
```dart
import  'package:flutter/material.dart';
void  main() => runApp(Home());

class  Home  extends  StatelessWidget {
// Home Widget
@override
Widget  build(BuildContext context) {
return  MaterialApp(
debugShowCheckedModeBanner: false,
title: 'Routing Sample App',
// Initial Route when App Starts
initialRoute: '/',
// Named Routes for all widgets in App
routes: {
// We can use any string instead of '\'
'/': (context) => HomeScreen(), // Main Screen Route
'/S1': (context) => Screen1(), // This is child screen of Home Screen
'/S1/S2': (context) => Screen2(), // This is child screen of Screen 1
},);}}
  
// Home Screen Widget
class  HomeScreen  extends  StatelessWidget {
@override
Widget  build(BuildContext context) {
return  Scaffold(
appBar: AppBar(
title: Text('Home Screen'),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text('This is Home Screen'),
ElevatedButton(
child: Text('Screen 1'),
// This will navigate to named route '/S1' that is Screen 1
onPressed: () => Navigator.pushNamed(context, '/S1'),
),],),),);}}
// Screen 1 Widget
class  Screen1  extends  StatelessWidget {
@override
Widget  build(BuildContext context) {
return  Scaffold(
appBar: AppBar(
title: Text('Screen 1'),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text('This is Screen 1'),
ElevatedButton(
child: Text('Home Screen'),
// This will navigate to the parent screen from where it reached here
onPressed: () => Navigator.pop(context),
),
ElevatedButton(
child: Text('Screen 2'),
// This will navigate to named route '/S1/S2' that is Screen 2
onPressed: () => Navigator.pushNamed(context, '/S1/S2'),
),],),),);}}  

// Screen 2 Widget
class  Screen2  extends  StatelessWidget {
@override
Widget  build(BuildContext context) {
return  Scaffold(
appBar: AppBar(
title: Text('Screen 2'),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text('This is Screen 2'),
ElevatedButton(
child: Text('Home Screen'),
// This will navigate to named route '/' that is Home Screen
onPressed: () => Navigator.pushNamed(context, '/'),
),
ElevatedButton(
child: Text('Screen 1'),
// This will navigate to the parent screen from where it reached here
onPressed: () => Navigator.pop(context),
),],),),);}}
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## ListView Builder
```dart
import  'package:flutter/material.dart';
void  main() => runApp(Home());

// List of items
List<String> list = ['Item 0'];
// Variable for incrementing value
int  num = 1;
class  Home  extends  StatelessWidget {
// Home Widget
@override
Widget  build(BuildContext context) {
return  MaterialApp(
debugShowCheckedModeBanner: false,
title: 'ListView Builder',
// Initial Route when App Starts
initialRoute: '/',
// Named Routes for all widgets in App
routes: {
// We can use any string instead of '\'
'/': (context) => HomeScreen(), // Main Screen Route
},);}}

class  HomeScreen  extends  StatefulWidget {
@override
_HomeScreenState  createState() => _HomeScreenState();
}

class  _HomeScreenState  extends  State<HomeScreen> {
// Function for adding value into the list
void  addItem() {
setState(() {
list.add('Item ' + '${num.toString()}');
});
print(list); // For console logs
num++;
}

// Function for deleting value from the list
void  delItem(int index) {
setState(() {
list.removeAt(index);
});
print(list); // For console logs
}

@override
Widget  build(BuildContext context) {
return  Scaffold(
appBar: AppBar(
backgroundColor: Colors.red,
title: Text('ListView Builder'),
actions: [
// Icon Button to add item into the list
IconButton(
icon: Icon(Icons.add),
onPressed: () {
addItem();
},),],),
body: ListView.builder(
// .length will automatically determine the size of list
itemCount: list.length,
itemBuilder: (context, index) {
return  Padding(
padding: EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 0.0),
child: Card(
elevation: 5.0,
child: ListTile(
// To show Snackbar
onTap: () {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(content: Text('You tapped on ${list[index]}')));
},
// Smile, because it's good for health
leading: Icon(
Icons.insert_emoticon,
color: Colors.amber,
size: 40,
),
// Icon Butoon to delete value at certain index
trailing: IconButton(
icon: Icon(
Icons.delete,
color: Colors.red,
),
onPressed: () {
delItem(index);
},),
// Setting title to ListTile
title: Text(
'Title of ${list[index]}',
),
// Setting subtitle to ListTile
subtitle: Text('Subtitle of ${list[index]}'),
),
),
);
},
),
// Floating Action Button to add values into the list
floatingActionButton: FloatingActionButton(
backgroundColor: Colors.red,
child: Icon(Icons.add),
onPressed: addItem,
),);}}
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Status Bar
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
## Show Dialog Alert
```dart
// ShowDialog Builtin Function
showDialog<void>(
  context: context,
  barrierDismissible: false,
  builder: (BuildContext context) {
    return AlertDialog(
      title: Text('Alert Title'),
      content: Text('My Alert Msg'),
      actions: <Widget>[
        TextButton(
          child: Text('Ask me later'),
          onPressed: () {
            print('Ask me later pressed');
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            print('Cancel pressed');
            Navigator.of(context).pop();
          },
        ),
        TextButton(
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
## Form
_Import Get from [Pub](https://pub.dev/packages/get)_
```yaml
dependencies:
  get:
```
_Generate GlobalKey for the `form validation`_
```dart
GlobalKey<FormState> key = GlobalKey<FormState>();
```
_Call this function where to show popup_
```dart
  Get.bottomSheet(
    BottomSheet(
      onClosing: () => Get.back(),
      builder: (context) {
        return Form(
          key: key,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => Get.back(),
                    ),
                    Text(
                      'Form Title here',
                      style: GoogleFonts.pacifico(
                        textStyle: TextStyle(fontSize: 22.0),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () {
                        if (key.currentState.validate()) {
                          // Get.to();
                          key.currentState.save();
                          Get.close(0);
                          Get.snackbar(
                              'Done', 'Data is submitted Successfully!',
                              snackPosition: SnackPosition.BOTTOM);
                        }
                      },
                    ),
                  ],
                ),
                TextFormField(
                  maxLength: 30,
                  keyboardType: TextInputType.name,
                  //  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_sharp),
                    helperText: 'i.e Usama Sarwar',
                    labelText: 'Full Name',
                  ),
                  validator: (_val) {
                    if (_val.isEmpty) {
                      return '*Required';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (_val) {
                   // Save _val in some variable
                  },
                )
              ],
            ),
          ),
        );
      },
    ),
    isScrollControlled: true,
  );
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## SplashScreen
```dart
// Importing Material Library
import 'package:flutter/material.dart';

// Importing for Timer
import 'dart:async';

// Main Function of this App
// We will call runApp that is a built-in function that will run the App
void main() {
  runApp(MyApp());
}

// MyApp Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Capsule',
      // Initial Route when App Starts
      initialRoute: '/splash',
      // Named Routes for all widgets in App
      routes: {
        // We can use any string instead of '\'
        '/splash': (context) => SplashScreen(), // Main Screen Route
        '/home': (context) => HomePage(), // This is child screen of HomePage
      },
    );
  }
}

// SplashPage Widget
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  // Inside the initState, I call the timer where 3 seconds of timer will navigate to the HomePage
  void initState() {
    Timer(
        new Duration(
          seconds: 3,
        ),
        nextpage);
    super.initState();
  }

// this is a function where navigate to named route '/home' that is HomePage
  void nextpage() {
    // pushNamedAndRemoveUntil = Push the route with the given name onto the navigator, and then remove all the previous routes until the predicate returns true.
    Navigator.pushNamedAndRemoveUntil(
      context,
      '/home',
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    // ShapeArea will indent the child by enough to avoid the status bar at the top of the screen.
    return SafeArea(
      child: Scaffold(
        // Set the Whole Screen background color
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Flutter",
                  // Styling text
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: Theme.of(context).textTheme.headline6.fontSize,
                  ),
                ),
                Text(
                  "Capsule",
                  // Styling text
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.w600,
                    fontSize: Theme.of(context).textTheme.headline6.fontSize,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// HomePage Widget
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ShapeArea will indent the child by enough to avoid the status bar at the top of the screen.
    return SafeArea(
      child: Scaffold(
        // App Bar of the App
        appBar: AppBar(
          // Set the appbar background color
          backgroundColor: Colors.indigo,
          // Title of the App Bar
          title: Text(
            "Flutter Capsule",
          ),
          // Set the appbar text in the center
          centerTitle: true,
          // Show the widget on Right side of our Mobile Screen
          actions: [
            // Icon Button to search
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          // Display a text in the center
          // This is how to display a text
          child: Text(
            "Welcome to Flutter Capsule",
            // Styling text
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: Theme.of(context).textTheme.headline6.fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## SignUp Form Validation
_This is signup form validation app that have FocusNode and as to validate the form.FocusNode is an object that can be used by a stateful widget to obtain the keyboard focus and to handle keyboard events.
To run this code copy and paste it in._ `lib/main.dart`
```dart
// Importing Material Library
import 'package:flutter/material.dart';

// Main Function of this App
// We will call runApp that is a built-in function that will run the App
void main() {
runApp(MyApp());
}

// MyApp Widget
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'Flutter Capsule',
// Route when App Starts
home: SignupFormValidation(),
);}}

// Signup Form Validation Widget
class SignupFormValidation extends StatefulWidget {
@override
_SignupFormValidationState createState() => _SignupFormValidationState();
}

class _SignupFormValidationState extends State<SignupFormValidation> {
// TextEditingController - A controller for an editable text field.
TextEditingController _name;
TextEditingController _email;
TextEditingController _pass;

// FocusNode - An object that can be used by a stateful widget to obtain the keyboard focus and to handle keyboard events.
FocusNode emailFocus = FocusNode();
FocusNode passFocus = FocusNode();

// GlobalKey<FormState> is key that is unique across the entire app.
GlobalKey<FormState> _formkey = GlobalKey<FormState>();

var _obscureText = true;

@override
void initState() {
// initState() - called when this object is inserted into the tree
_name = TextEditingController();
_email = TextEditingController();
_pass = TextEditingController();
super.initState();
}

@override
void dispose() {
// dispose() - when this object and its State is removed from the tree permanently and will never build again.
_name.dispose();
_email.dispose();
_pass.dispose();

emailFocus.dispose();
passFocus.dispose();
super.dispose();
}

@override
Widget build(BuildContext context) {
// ShapeArea will indent the child by enough to avoid the status bar at the top of the screen.
return SafeArea(
child: Scaffold(
// Set the Whole Screen background color
backgroundColor: Colors.black,
appBar: AppBar(
backgroundColor: Colors.transparent,
elevation: 0,
title: Row(
// Minimize the amount of free space along the main axis, subject to the incoming layout constraints.
mainAxisSize: MainAxisSize.min,
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
"Flutter",
// Styling text
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.w600,
fontSize: Theme.of(context).textTheme.headline6.fontSize,
),),
Text(
"Capsule",
// Styling text
style: TextStyle(
color: Colors.pinkAccent,
fontWeight: FontWeight.w600,
fontSize: Theme.of(context).textTheme.headline6.fontSize,
),),],),),
body: Padding(
padding: EdgeInsets.symmetric(
horizontal: 16,
),
// Form is an optional container for grouping together multiple form field widgets (e.g. TextField widgets).
child: Form(
key: _formkey,
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
// call the formTextWidget as a Name Field
formTextWidget(
hintText: "Name",
obscureText: false,
controller: _name,
textInputAction: TextInputAction.next,
onEditingComplete: () {
FocusScope.of(context).requestFocus(emailFocus);
},
validator: (val) {
if (val.isEmpty) return "Field is Empty";
return null;
},),
// call the formTextWidget as a Email Field
formTextWidget(
hintText: "Email",
obscureText: false,
controller: _email,
focusNode: emailFocus,
textInputAction: TextInputAction.next,
onEditingComplete: () {
FocusScope.of(context).requestFocus(passFocus);
},
validator: (val) {
if (val.isEmpty || !val.contains("@gmail.com")) {
return "Field must be conatin @gmail.com";
}
return null;
},),
// call the formTextWidget as a Password Field
formTextWidget(
hintText: "Password",
obscureText: _obscureText,
controller: _pass,
textInputAction: TextInputAction.done,
suffixIcon: InkWell(
onTap: () {
// setState will change our state and we can see the password visibility or not
setState(() {
_obscureText = !_obscureText;
});},
child: Icon(
_obscureText ? Icons.visibility : Icons.visibility_off,
color: _obscureText ? Colors.amber : Colors.white,
),),
validator: (val) {
if (val.isEmpty || val.length < 7)
return "Field have more than 7 digits";
return null;
},),
// SizedBox - A box with a specified size.
SizedBox(
height: 25,
),
 // MaterialButton - A utility class for building Material buttons that depend on the ambient ButtonTheme and Theme.
MaterialButton(
onPressed: () {
String name = _name.text;
String email = _email.text;
String pass = _pass.text;
print("Name is $name \nEmail is $email \nPassword is $pass",
);
var a = _formkey.currentState.validate();
print("The a  is $a");
_formkey.currentState.save();
_name.clear(); // Remove the element after insert the name
_email.clear(); // Remove the element after insert the email
_pass.clear(); // Remove the element after insert the password
},
color: Colors.red,
padding: EdgeInsets.symmetric(
vertical: 13,
horizontal: 20,
),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(17),
),
child: Text("Create an Account",
),),],),),),),);}}
// making the formTextWidget
// contain the TextFormField
Widget formTextWidget({
TextEditingController controller,
bool obscureText,
String hintText,
Widget suffixIcon,
FocusNode focusNode,
Function() onEditingComplete,
Function(String) validator,
TextInputAction textInputAction,
}) {
return TextFormField(
obscureText: obscureText,
controller: controller,
// Styling form-text
style: TextStyle(
color: Colors.white,
),
validator: validator,
decoration: InputDecoration(
hintText: hintText,
// Styling Hint-text
hintStyle: TextStyle(
color: Colors.grey,
),
suffixIcon: suffixIcon,
// UnderlineInputBorder - Draws a horizontal line at the bottom of an InputDecorator's container and defines the container's shape.
// The input decorator's "container" is the optionally filled area above the decorator's helper, error, and counter.
focusedBorder: UnderlineInputBorder(
borderSide: BorderSide(color: Colors.white),
),
enabledBorder: UnderlineInputBorder(
borderSide: BorderSide(color: Colors.white),
),
errorBorder: UnderlineInputBorder(
borderSide: BorderSide(color: Colors.white),
),),
focusNode: focusNode,
textInputAction: textInputAction,
onEditingComplete: onEditingComplete,
);}

```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Default Flutter Theme 
_Themes are just Theme widgets created at the root of an app by the MaterialApp. To share a Theme across an entire app, provide a ThemeData to the MaterialApp constructor.
To run this code copy and paste it in._ `lib/main.dart`
```dart
// Importing Material Library
import 'package:flutter/material.dart';

// Main Function of this App
// We will call runApp that is a built-in function that will run the App
void main() {
runApp(MyApp());
}

// MyApp Widget
class MyApp extends StatelessWidget {

@override
Widget build(BuildContext context) {
const appName = 'Flutter Capsule';
return MaterialApp(
debugShowCheckedModeBanner: false,
title: appName,
theme: ThemeData(
// Define the default colors.
scaffoldBackgroundColor: Colors.indigo,
appBarTheme:const AppBarTheme(
backgroundColor: Colors.red,),
// Define the default TextTheme. Use this to specify the default
// text styling for headlines, titles, bodies of text, and more.
textTheme: const TextTheme(
headline1: TextStyle(fontSize: 72.0,color:Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Georgia',),
headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic,fontFamily: 'Hind'),
),
),
home: const MyHomePage(
title: appName,
),
);
}}

// MyHomePage Widget
class MyHomePage extends StatelessWidget {
final String title;
const MyHomePage({Key? key, required this.title}) : super(key: key);
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text(title),
),
body: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('Learn the Theme Data',
// Styling text as the default TextTheme
style: Theme.of(context).textTheme.headline6,),
Text('Applies a theme to descendant widgets.',
// Styling text as the default TextTheme
style: Theme.of(context).textTheme.headline1,
),
],
),
);
}}
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Implement Search
_As we are doing here how to Implement Search Function in Flutter with the help of ListViewBuilder Widget. This is a basic example of working the search function._ `lib/main.dart`
```dart
// Importing Material Library
import 'package:flutter/material.dart';

// Main Function of this App
// We will call runApp that is a built-in function that will run the App
void main() {
  runApp(MyApp());
}

// MyApp Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: SearchPage(),
    );
  }
}

// SearchPage Widget
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // make the list of fruits
  List<String> fruits = [
    'apple',
    'orange',
    'banana',
    'grapes',
    'pineapple',
    'mango',
    'avocado',
    'lychee',
    'watermelon',
    'kiwi',
    'Guava',
    'Pomegranates',
    'papaya',
    'lemon',
  ];

  // empty list of getFruits
  List<String> getFruits = [];

  // TextEditingController - A controller for an text field.
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Capsule"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Search here',
                // Styling text as the default TextTheme
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: Theme.of(context).textTheme.subtitle1.fontSize,
                ),
              ),
              onChanged: (value) {
                setState(() {
                  // call the list of fruits as a WHERE clause
                  // and set the list of fruits into the empty list of getFruits
                  getFruits = fruits
                      .where((element) => element.contains(value.toLowerCase()))
                      .toList();
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // checking the _controller and getFruits.length is equal to 0 or not
          // if null or 0 then we get CircularProgressIndicator and if not null or 0 then we get the data
          _controller.text.isNotEmpty && getFruits.length == 0
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Expanded(
                  child: ListView.builder(
                      // if _controller.text.isNotEmpty is a true then we get CircularProgressIndicator and if false, we get data
                      itemCount: _controller.text.isNotEmpty
                          ? getFruits.length
                          : fruits.length,
                      itemBuilder: (_, index) {
                        return ListTile(
                          // if _controller.text.isNotEmpty is a true then we get List of getFruits and if false we get List of fruits
                          title: Text(_controller.text.isNotEmpty
                              ? getFruits[index]
                              : fruits[index]),
                        );
                      }),
                )
        ],
      ),
    );
  }
}
```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
## Slider
_Used to select from a range of values._
```dart
class SliderWidget extends StatefulWidget {
  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Capsule"),
      ),
      // Slider Widget
      // Used to select from a range of values.
      body: Slider(
        // activeColor - The color to use for the portion of the slider track that is active.
        activeColor: Colors.orangeAccent,
        // min - The minimum value can be 0.0
        min: 0.0,
        // max - The maximum value can be 100.
        max: 100.0,
        // value - The currently selected value for this slider.
        value: value,
        // onChanged is called while the user is selecting a new value for the slider.
        onChanged: (val) {
          setState(() {
            value = val;
          });
        },
        // divisions - no of parts can be divided
        divisions: 4,
        // A label to show above the slider when the slider is active.
        label: "$value",
      ),
    );
  }
}

```
[![TOP](https://img.shields.io/badge/Goto-Top-000000)](#q-u-i-c-k-l-i-n-k-s)
#### Follow Us
[![Usama Sarwar](https://img.shields.io/badge/Developer-fluttercapsule-000000?logo=opsgenie&logoColor=ffffff)](https://usamasarwar.github.io) [![Usama Sarwar](https://img.shields.io/badge/Github-211F1F?logo=GitHub&logoColor=ffffff)](https://github.com/usamasarwar/) [![Usama Sarwar](https://img.shields.io/badge/Subscribe-FF0000?logo=Youtube&logoColor=ffffff)](https://www.youtube.com/UsamaSarwar?sub_confirmation=1) [![Usama Sarwar](https://img.shields.io/badge/Connect-0077B5?logo=Linkedin&logoColor=ffffff)](https://www.linkedin.com/in/UsamaSarwarOfficial/)  [![Usama Sarwar](https://img.shields.io/badge/Follow-1877F2?logo=Facebook&logoColor=ffffff)](https://www.facebook.com/UsamaSarwarOfficial/)  [![Usama Sarwar](https://img.shields.io/badge/Follow-08A0E9?logo=Twitter&logoColor=ffffff)](https://www.twitter.com/UsamaSarwarPro/)  [![Usama Sarwar](https://img.shields.io/badge/Follow-DD2A7B?logo=Instagram&logoColor=ffffff)](https://www.instagram.com/UsamaSarwarOfficial/) [![Usama Sarwar](https://img.shields.io/badge/Gmail-D44638?logo=gmail&logoColor=ffffff)](mailto:UsamaSarwarOfficial@gmail.com) [![Usama Sarwar](https://img.shields.io/badge/Chat-1877F2?logo=Messenger&logoColor=ffffff)](https://m.me/UsamaSarwarOfficial/) [![Usama Sarwar](https://img.shields.io/badge/Chat-25D366?logo=WhatsApp&logoColor=ffffff)](https://wa.me/923100007773?text=%23Github) [![Usama Sarwar](https://img.shields.io/badge/Buy_me_Coffee-784fff?logo=buy-me-a-coffee&logoColor=ffffff)](https://wa.me/923100007773?text=Thank%20you%20for%20supporting%20me%20%E2%9D%A4%0ABank%20Account%20Details%0ATitle%3A%20USAMA%20SARWAR%0AIBAN%3A%20PK90HABB0022417901576303)
