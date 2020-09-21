// Importing Material Library
import 'package:flutter/material.dart';

// Main Function of this App
// We will call runApp that is a built-in function that will run the App
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Initilized a variable 
  static int number = 5;
  // Function for performing task
  void increment() {
    number++;
  }

  @override
  Widget build(BuildContext context) {
    return // Material App is the outer most Parent Widget that will wrap the child widgets
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
            'number: $number', // However this will not update
            // Styling text
            style: TextStyle(
              // Setting fontSize
              fontSize: 25.0,
            ),
          ),
        ),
        // FloatingActionButton Added
        floatingActionButton: FloatingActionButton(
          // Setting Icon
          child: Icon(Icons.add),
          // Setting action on button when it is pressed
          onPressed: () {
            // Funtion for the incrementation
            increment();
            // To check the value of number on console
            print('Number is: $number');
          },
        ),
      ),
    );
  }
}
