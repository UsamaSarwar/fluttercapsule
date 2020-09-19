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
          primarySwatch: Colors.red,
        ),
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
                      color: Colors.amberAccent,
                    ),
                  ),
                ),
              ),
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
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
