import 'package:flutter/material.dart';
import 'package:learning/main_layout.dart';

class ListViewSatu extends StatelessWidget {
  const ListViewSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List View Basic',
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.amber[100],
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.amber[200],
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.amber[300],
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.amber[400],
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.amber[500],
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.amber[600],
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.amber[700],
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.amber[800],
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.amber[900],
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
        ],
      ),
    );
  }
}
