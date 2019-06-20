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
          _buttonSection(),
          _textSection(),

        ],
      ),
    ); // Scaffold
  }

  Widget _imageSection() {
    return Image.asset(
      'assets/lake.jpg',
      width: 600,
      height: 240,
      fit: BoxFit.fill,
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
          ), // Expanded


          Icon(
            Icons.star,
            color: Colors.red,
          ), // Icon

          Text('41'),

        ],
      ), // Row
    ); // Padding
  } // _titleSection

  Widget _buttonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buttonItems(Icons.phone, 'CALL'),
        _buttonItems(Icons.near_me, 'ROUTE'),
        _buttonItems(Icons.share, 'SHARE'),
      ],
    ); // Row
  } // _buttonSection

  _buttonItems(IconData icon, String text){
    final Color color = Colors.blue;
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ), // Icon
        SizedBox(
          height: 8.0,
        ),
        Text(
            text,
            style: TextStyle(color: color),
        ),
      ],
    ); // Column
  }

  Widget _textSection() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
      ), // Text
    ); // Padding
  }
}

