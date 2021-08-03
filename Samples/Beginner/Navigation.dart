import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  // Home Widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      },
    );
  }
}

// Home Screen Widget
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ),
          ],
        ),
      ),
    );
  }
}

// Screen 1 Widget
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ),
          ],
        ),
      ),
    );
  }
}

// Screen 2 Widget
class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Screen 2'),
            RaisedButton(
              child: Text('Home Screen'),
              // This will navigate to named route '/' that is Home Screen
              onPressed: () => Navigator.pushNamed(context, '/'),
            ),
            RaisedButton(
              child: Text('Screen 1'),
              // This will navigate to the parent screen from where it reached here
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
