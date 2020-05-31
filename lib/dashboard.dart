import 'package:flutter/material.dart';
import 'package:login/listview.dart';

import 'package:login/dashboard_pages/webview.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("View all", IconData(0xe8ef, fontFamily: 'MaterialIcons', matchTextDirection: true),1),
            makeDashboardItem("Employee Vehicle Details", IconData(0xe32a, fontFamily: 'MaterialIcons'),2),
            makeDashboardItem("Guest Vehicle Details", IconData(0xe55a, fontFamily: 'MaterialIcons'),3),
            makeDashboardItem("Search by Date", IconData(0xe425, fontFamily: 'MaterialIcons'),4),
            makeDashboardItem("Search by Number", IconData(0xe8b6, fontFamily: 'MaterialIcons'),5),
            makeDashboardItem("Live Video", IconData(0xe439, fontFamily: 'MaterialIcons'),6)



          ],
        ),
      ),
    );
  }

  /*makeDashboardItem("Employee Vehicle Details", IconData(0xe32a, fontFamily: 'MaterialIcons')),
  makeDashboardItem("Guest Vehicle Details", IconData(0xe55a, fontFamily: 'MaterialIcons')),
  makeDashboardItem("Search Vehicle", IconData(0xe8b6, fontFamily: 'MaterialIcons'))*/
  //final titles = ['View all', 'Employee Vehicle Details', 'Guest Vehicle Details', 'Search Vehicle'];

  //final icons = [IconData(0xe8ef, fontFamily: 'MaterialIcons', matchTextDirection: true), IconData(0xe32a, fontFamily: 'MaterialIcons'),
  //  IconData(0xe55a, fontFamily: 'MaterialIcons'), IconData(0xe8b6, fontFamily: 'MaterialIcons')];

  Card makeDashboardItem(String title, IconData icon,int nav) {
    return Card(
        elevation: 4.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(140, 199, 250, 1.0),borderRadius: BorderRadius.circular(6)),
          child: new InkWell(
            onTap: () {
              if(nav==1){
                Navigator.push(context,MaterialPageRoute(builder: (context) => MyWebView(title:'View all Vehicles',selectedUrl:'https://vehicledetails-4a383.web.app/view_all.html')),); // MyDrawer(title:'Vehicle monitoring')
                print(nav);
            }
             else if(nav==2){
                Navigator.push(context,MaterialPageRoute(builder: (context) => MyWebView(title:'Employee Vehicles',selectedUrl:'https://vehicledetails-4a383.web.app/Emp.html')),);
                print(nav);
              }
              else if(nav==3){
                Navigator.push(context,MaterialPageRoute(builder: (context) => MyWebView(title:'Guest Vehicles',selectedUrl:'https://vehicledetails-4a383.web.app/Guest.html')),);
                print(nav);
              }
              else if(nav==4){
                Navigator.push(context,MaterialPageRoute(builder: (context) => MyWebView(title:'Date Search',selectedUrl:'https://vehicledetails-4a383.web.app/Date.html')),);
                print(nav);
              }
              else if(nav==5){
                Navigator.push(context,MaterialPageRoute(builder: (context) => MyWebView(title:'Vehicle Number Plate Search',selectedUrl:'https://vehicledetails-4a383.web.app/Number.html')),);
                print(nav);
              }
              else if(nav==6){
                //Navigator.push(context,MaterialPageRoute(builder: (context) => MyWebView(title:'Date Search',selectedUrl:'https://vehicledetails-4a383.web.app/Date.html')),);
                print(nav);
              }

              else
            {
              Navigator.push(context,MaterialPageRoute(builder: (context) => Dashboard()),);
              print(nav);
            }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child: Icon(
                      icon,
                      size: 40.0,
                      color: Colors.black,
                    )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      textAlign: TextAlign.center,
                      style:
                      new TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }
}