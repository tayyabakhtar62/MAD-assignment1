import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text_value = 'Hello User';
  change() {
    setState(() {
      text_value = 'Hello CMS iD';
    });
  }

  @override
  Widget build(BuildContext context) {
    final textfield = Container(
      padding: EdgeInsets.all(20),
      child: Text('$text_value', style: TextStyle(fontSize: 30)),
    );
    final button = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(20),
      child: ElevatedButton(
        onPressed: () {
          change();
        },
        child: Text(
          'button',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('M Tayyab 217038'),
        leading: Row(
          children: [
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/mty.jpeg'),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[textfield, button],
        ),
      ),
    );
  }
}
