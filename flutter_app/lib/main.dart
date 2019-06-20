import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LayoutTutorial(),
    );
  }
}

class LayoutTutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Layout'),
      ), //AppBar
      // TODO: Diagram the layout - title
      body: Column(
        children: <Widget>[
          _imageSection(),
          _titleSection(),

        ],
      ),
    ); // Scaffold
  }

  Widget _imageSection() {
    return Row(

    );
  } // _imageSection

  Widget _titleSection() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ), // Text
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey),
                ), // Text
              ],
            ), // Column
          ),


          Icon(
            Icons.star,
            color: Colors.red,
          ), // Icon

          Text('41'),

        ],
      ),
    ); // Row
  } // _titleSection
}

