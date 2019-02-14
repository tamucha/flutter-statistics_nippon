import 'package:flutter/material.dart';
import 'crime_page.dart';

class HomePage extends StatefulWidget {
  
  HomePage({Key key, this.title}) : super(key: key);

  final String title;
  
  @override
  _HomePageState createState() => _HomePageState();
}
// Drawer: https://medium.com/@kashifmin/flutter-setting-up-a-navigation-drawer-with-multiple-fragments-widgets-1914fda3c8a8
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(child: Text('統計で見る日本')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ), 
            ListTile(
              // https://www.e-stat.go.jp/stat-search/database?page=1&layout=datalist&toukei=00130001&tstat=000001103615&cycle=7&statdisp_id=0003194968&second=1&second2=1&tclass1val=0
              title: Text('犯罪統計'),
              onTap: () {
                // Update the state of the app
                Navigator.push(context, new MaterialPageRoute(builder: (context) => CrimePage(title: '犯罪統計')));
                // Then close the drawer
                Navigator.pop(context);
              },  
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}