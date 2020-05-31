import 'package:flutter/material.dart';
import 'package:login/dashboard_pages/webview.dart';
import 'package:login/dashboard.dart';

class MyDrawer extends StatelessWidget {
  final String title;
  MyDrawer({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Dashboard()),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset(
          "assets/anpr.png",
          fit: BoxFit.contain,
        ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading:Icon(IconData(0xe8ef, fontFamily: 'MaterialIcons', matchTextDirection: true)),
              title: Text('View all'),
              onTap: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => MyWebView(title:'View all Vehicles',selectedUrl:'https://vehicledetails-4a383.web.app/view_all.html')),); // MyDrawer(title:'Vehicle monitoring')
            //  print(nav);
              //Navigator.pop(context);
              },
            ),
            ListTile(
              leading:Icon(IconData(0xe32a, fontFamily: 'MaterialIcons'),),
              title: Text('Employee Vehicle Details'),
              onTap: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => MyWebView(title:'Employee Vehicles',selectedUrl:'https://vehicledetails-4a383.web.app/Emp.html')),);
                //print(nav);
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading:Icon(IconData(0xe55a, fontFamily: 'MaterialIcons')),
              title: Text('Guest Vehicle Details'),
              onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => MyWebView(title:'Guest Vehicles',selectedUrl:'https://vehicledetails-4a383.web.app/Guest.html')),);
                //print(nav);
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading:Icon(IconData(0xe425, fontFamily: 'MaterialIcons')),
              title: Text('Search by Date'),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => MyWebView(title:'Date Search',selectedUrl:'https://vehicledetails-4a383.web.app/Date.html')),);
                //print(nav);
              },
            ),
            ListTile(
              leading:Icon(IconData(0xe8b6, fontFamily: 'MaterialIcons')),
              title: Text('Search by Number'),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => MyWebView(title:'Vehicle Number Plate Search',selectedUrl:'https://vehicledetails-4a383.web.app/Number.html')),);
                //print(nav);
              },
            ),ListTile(
              leading:Icon(IconData(0xe439, fontFamily: 'MaterialIcons')),
              title: Text('Live Video'),
              onTap: () {
                //Navigator.push(context,MaterialPageRoute(builder: (context) => MyWebView(title:'Date Search',selectedUrl:'https://vehicledetails-4a383.web.app/Date.html')),);
                //print(nav);
              },
            ),
          ],
        ),
      ),
    );
  }
}