import 'package:flutter/material.dart';



class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples
Widget _myListView(BuildContext context) {

  final titles = ['View all', 'Employee Vehicle Details', 'Guest Vehicle Details', 'Search Vehicle'];

  final icons = [IconData(0xe8ef, fontFamily: 'MaterialIcons', matchTextDirection: true), IconData(0xe32a, fontFamily: 'MaterialIcons'),
    IconData(0xe55a, fontFamily: 'MaterialIcons'), IconData(0xe8b6, fontFamily: 'MaterialIcons')];

  return ListView.builder(
    scrollDirection: Axis.vertical,
    itemExtent: 125.0,
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card( //                           <-- Card widget
        child: ListTile(
          leading: Icon(icons[index]),
          title: Text(titles[index],style: TextStyle(fontSize: 20.0),),

        ),
      );
    },
  );
}