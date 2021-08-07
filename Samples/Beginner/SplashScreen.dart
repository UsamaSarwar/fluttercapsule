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
