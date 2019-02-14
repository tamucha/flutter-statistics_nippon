import 'package:flutter/material.dart';

class CrimePage extends StatefulWidget {
  CrimePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _CrimePageState();
}

class _CrimePageState extends State<CrimePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(child: Text("犯罪統計"),),
    );
  }
}