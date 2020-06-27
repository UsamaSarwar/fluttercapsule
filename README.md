[YouTube](https://www.youtube.com/UsamaSarwar?sub_confirmation=1) | [LinkedIn](https://www.linkedin.com/in/csUsamaSarwar/) | [Facebook](https://www.facebook.com/csUsamaSarwar/) | [Twitter](https://www.twitter.com/csUsamaSarwar/) | [Instagram](https://www.instagram.com/csUsamaSarwar/) 

![Flutter](https://i.imgur.com/tq2qQaH.jpg)

# Flutter Notes by Usama Sarwar
#### Q U I C K L I N K S
- [Flutter Health](#flutter-health)
- [Create Project](#create-project)
- [Run Project](#run-project)
- [Build Flutter App](#build-app)
- [Hello World App](#hello-world)
- [Hide Status Bar](#hide-status-bar)
- [Stateful Widget](#stateful-widget)
- [Stateful Widget](#stateful-widget)
- [Stateless Widget](#stateless-widget)
- [Lock Orientation](#lock-orientation)
- [Gesture Detector](#gesture-detector)
- [Loading Indicator](#loading-indicator)
- [Show Dialog Alert](#show-dialog-alert)
- [Routing Navigation](#routing-navigation)
- [Inkwell Button Effect](#inkwell-button-effect)
- [Platform Specific Code](#platform-specific-code)
- [HTTP Request](#http-request)
- [Async Await](#async-await)
- [Arrays](#arrays)
- [JSON](#json)

## Flutter Health
```bash
flutter upgrade
```
```bash
flutter doctor
```
```bash
flutter doctor -v
```
```bash
flutter clean
```
```bash
flutter pub cache repair
```
## Create Project
```bash
flutter create app_name
```
### Specify Package Name
```bash
flutter create --org com.company app_name
```
### Create Command for Release
```bash
flutter create --androidx -t app --org com.company -a kotlin -i swift app_name
```
## Run Project
```dart
flutter run
```
```dart
flutter run -v
```
### Run on Specific Device
```dart
flutter run -d device_ID
```
## Build App
```dart
flutter build apk
```
### Generate App Bundles
```dart
flutter build appbundle --target-platform android-arm,android-arm64,android-x64
```
### Split the APKs per ABI (Reduces the APK Size to the minimum)
```dart
flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi
```
## Hello World
```dart
import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world!',
      home: Scaffold(
        body: Center(
          child: Text('Hello world'),
        ),
      ),
    );
  }
}
```
## Stateless Widget
```dart
import 'package:flutter/material.dart';

class World extends StatelessWidget {
  Greeter({Key key @required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hello, $name'),
    );
  }
}
```
## Stateful Widget
```dart
import 'package:flutter/material.dart';

class WidgetWithState extends StatefulWidget {
  @override
  _WidgetWithStateState createState() => _WidgetWithStateState();
}

class _WidgetWithStateState extends State<WidgetWithState> {
  int counter = 0;

  increment() {
    setState(() {
      counter++;
    });
  }

  decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FlatButton(onPressed: increment, child: Text('Increment++')),
        FlatButton(onPressed: decrement, child: Text('Decrement--')),
        Text(counter.toString()),
      ],
    );
  }
}
```
## Inkwell Button Effect
```dart
InkWell(
  child: Text('Tap me!'),
  onTap: _onTap,
  onLongPress: _onLongPress,
  onDoubleTap: _onDoubleTap,
  onTapCancel: _onTapCancel,
);
```
## Gesture Detector
```dart
GestureDetector(
  onTap: _onTap,
  onLongPress: _onLongPress,
  child: Text('Button'),
);
```
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
## Platform Specific Code
```dart
import 'dart:io' show Platform;

if (Platform.isIOS) {
  doSmthIOSSpecific();
}

if (Platform.isAndroid) {
  doSmthAndroidSpecific();
}
```
## Hide Status Bar
```dart
import 'package:flutter/services.dart';

void main() {
    SystemChrome.setEnabledSystemUIOverlays([]);
}
```
## Lock Orientation
```dart
import 'package:flutter/services.dart';

void main() async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(App());
}
```
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
## Routing Navigation
```dart
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Go to SecondScreen'),
        onPressed: () => Navigator.pushNamed(context, '/second'),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  void _pushSecondScreen(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('Go back!'),
          onPressed: () => Navigator.pop(context),
        ),
        RaisedButton(
          child: Text('Go to SecondScreen... again!'),
          onPressed: () => _pushSecondScreen(context),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => FirstScreen(),
      '/second': (context) => SecondScreen(),
    },
  ));
}
```
## Arrays
```dart
final length = items.length;

final newItems = items..addAll(otherItems);

final allEven = items.every((item) => item % 2 == 0);

final filled = List<int>.filled(3, 42);

final even = items.where((n) => n % 2 == 0).toList();

final found = items.firstWhere((item) => item.id == 42);

final index = items.indexWhere((item) => item.id == 42);

final flat = items.expand((_) => _).toList();

final mapped = items.expand((item) => [item + 1]).toList();

items.forEach((item) => print(item));

items.asMap().forEach((index, item) => print('$item, $index'));

final includes = items.contains(42);

final indexOf = items.indexOf(42);

final joined = items.join(',');

final newItems = items.map((item) => item + 1).toList();

final item = items.removeLast();

items.add(42);

final reduced = items.fold({}, (acc, item) {
  acc[item.id] = item;
  return acc;
});

final reversed = items.reversed;

items.removeAt(0);

final slice = items.sublist(15, 42);

final hasOdd = items.any((item) => item % 2 == 0);

items.sort((a, b) => a - b);

items.replaceRange(15, 42, [1, 2, 3]);

items.insert(0, 42);
```
## HTTP Request
```yaml
dependencies:
  http: ^0.12.0
```
```dart
import 'dart:convert' show json;
import 'package:http/http.dart' as http;

http.get(API_URL).then((http.Response res) {
    final data = json.decode(res.body);
    print(data);
});
```
## Async Await
```dart
Future<int> doSmthAsync() async {
  final result = await Future.value(42);
  return result;
}

class SomeClass {
  method() async {
    final result = await Future.value(42);
    return result;
  }
}
```
## JSON

```dart
import 'dart:convert' show json;

json.decode(someString);
json.encode(encodableObject);

```

`json.decode`  returns a  `dynamic`  type, which is probably not very useful

You should describe each entity as a Dart class with  `fromJson`  and  `toJson`  methods

```dart
class User {
    String displayName;
    String photoUrl;

    User({this.displayName, this.photoUrl});

    User.fromJson(Map<String, dynamic> json)
      : displayName = json['displayName'],
        photoUrl = json['photoUrl'];

    Map<String, dynamic> toJson() {
      return {
        'displayName': displayName,
        'photoUrl': photoUrl,
      };
    }
}

final user = User.fromJson(json.decode(jsonString));
json.encode(user.toJson());

```

However this approach is error-prone (e.g. you can forget to update map key after class field was renamed), so you can use  `json_serializable`  as an alternative

Add  `json_annotation`,  `build_runner`  and  `json_serializable`  to dependencies

```yaml
dependencies:
  json_annotation: ^2.0.0

dev_dependencies:
  build_runner: ^1.0.0
  json_serializable: ^2.0.0

```

Update your code

```dart
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String displayName;
  String photoUrl;

  User({this.displayName this.photoUrl});

  // _$UserFromJson is generated and available in user.g.dart
  factory User.fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  // _$UserToJson is generated and available in user.g.dart
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

final user = User.fromJson(json.decode(jsonString));
json.encode(user); // toJson is called by encode

```

Run  `flutter packages pub run build_runner build`  to generate serialization/deserialization code

To watch for changes run  `flutter packages pub run build_runner watch`

[Read more about JSON and serialization here](https://flutter.dev/docs/development/data-and-backend/json)
