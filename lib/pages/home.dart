import 'package:flutter/material.dart';
import 'package:dreamapp/pages/screens/addapp.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('My Dream Apps'),
        leading: Icon(Icons.ac_unit),
      ),
      body: new Text('This is body'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addApp();
        },
        child: Icon(Icons.dashboard),
      ),
    );
  }

  void addApp() {
    // print('addapp');
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AddApp();
    }));
  }
}
