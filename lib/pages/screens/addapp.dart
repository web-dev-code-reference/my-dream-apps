import 'package:flutter/material.dart';

class AddApp extends StatefulWidget {
  @override
  _AddAppState createState() => _AddAppState();
}

class _AddAppState extends State<AddApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: new Text('Add App'),
    ));
  }
}
