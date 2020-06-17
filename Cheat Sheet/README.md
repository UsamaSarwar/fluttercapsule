![Flutter](https://lh3.googleusercontent.com/KmMHgbnZLLKM3ORfiPx8x9J8rbX7iP3VOuQ6AeHb_3nFLfktKBGQnZ8PcTcB_OZ9lyGynUKy8NmthvTWK4fPe8yQHPOxjzvCz3YaKdJrmU58KxgxlTuqTzQZHCI0steGFyOex3fQbMGeFXZsyEow68Y7nwxoOzXLOINwo-g-6YqVlNSytn1SMcKJCEXGwAWRi_G6Gvvs2BXKCHZiEGmL4yc81LSaKLc3nvLZmOTO_3ALlNb_AHjbsMdcvVtkVsJHXunAQSf_E14EBEHAvClW19tV_WxAplO7cLSmdrgM61EBX7mteDOigUKz6xXk4zU1Ea3ngQ_uYvUxJmJB7N5pHncuxU88Ksq7w0llmmqKkeh4O0LwC-mgEzvVs50uqHZDMFNxvvhSP1ZV8YGKHEkO-HZNUfbrtBqSti6YVyVrIqxz-4HgDzsCFyiHdPXgeJPmJDac57dpTFkqzFXmvWzkrVYd6g3wmetx7UIrUe-kBhLPlrk-OB3sUavdJJK42iRf3MU7HGx7F__Z-j2QyyNADBUYZMKK3W6j6qrvZlrjYUOc4X_GizVzgmyrrsuDDcbnXGC9m4kiX71bB1fQKodTLnesf7PT_A4JcHV6nBGx4DUPGqdMoGIZobkJdzoNV4oso4T0ldS386VFs9uLfLd-s8RnkDf_-CctfspUMka4bA3Kv5VGPDofamZM_umn=w1280-h225-no?authuser=0)
[YouTube](https://www.youtube.com/UsamaSarwar/) | [LinkedIn](https://www.linkedin.com/in/csUsamaSarwar/) | [Facebook](https://www.facebook.com/csUsamaSarwar/) | [Twitter](https://www.twitter.com/csUsamaSarwar/) | [Instagram](https://www.instagram.com/csUsamaSarwar/) 
# Flutter Cheat Sheet

> This cheat sheet is very helpful during Flutter Development.

## Check Flutter Health
```bash
flutter doctor
```
## Create Project
```bash
flutter create project_name
```
### Specify Organization/Package Name
```bash
flutter create --org com.yourorg project_name
```
### Flutter Create | Release Command
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
