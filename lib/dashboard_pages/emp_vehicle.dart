import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
class Emp_vehicle extends StatelessWidget {
  final String title;
  MyDrawer({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: My()),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Vehile Monitoring System'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading:Icon(IconData(0xe8ef, fontFamily: 'MaterialIcons', matchTextDirection: true)),
              title: Text('View all'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:Icon(IconData(0xe32a, fontFamily: 'MaterialIcons'),),
              title: Text('Employee Vehicle Details'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:Icon(IconData(0xe55a, fontFamily: 'MaterialIcons')),
              title: Text('Guest Vehicle Details'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:Icon(IconData(0xe8b6, fontFamily: 'MaterialIcons')),
              title: Text('Search Vehicle'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}