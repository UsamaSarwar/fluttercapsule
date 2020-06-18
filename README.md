[YouTube](https://www.youtube.com/UsamaSarwar?sub_confirmation=1) | [LinkedIn](https://www.linkedin.com/in/csUsamaSarwar/) | [Facebook](https://www.facebook.com/csUsamaSarwar/) | [Twitter](https://www.twitter.com/csUsamaSarwar/) | [Instagram](https://www.instagram.com/csUsamaSarwar/) 

![Flutter](https://i.imgur.com/tq2qQaH.jpg)

# Flutter Notes by Usama Sarwar
#### Q U I C K L I N K S
[Check Flutter Health](#check-flutter-health) | [Create Flutter Project](#create-project) | [Hello World App](#hello-world) | [Stateless Widget](#stateless-widget)

## Check Flutter Health
```bash
flutter doctor
```
## Create Project
```bash
flutter create project_name
```
### Specify Package Name
```bash
flutter create --org com.yourorg project_name
```
### Create Command for Release
```bash
flutter create --androidx -t app --org com.companyname -a kotlin -i swift project_name
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
