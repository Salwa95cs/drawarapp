import 'package:drawerapp/new_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
     theme: new ThemeData(primarySwatch: Colors.pink),
     home: new HomePage(), 
    
    );
  }
}


class  HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android? 5.0:0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Salwa Alshehri"),
              accountEmail: new Text("salwa195one@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("S")

              ),
            ),
            new ListTile(
              title: new Text("page one"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop(); 
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new NewPage ("Page One")
                ));
              }
            ),
            new ListTile(
              title: new Text("page Two"),
              trailing: new Icon(Icons.arrow_downward),
              onTap: () {
                Navigator.of(context).pop(); 
                 Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new NewPage ("Page Two")
                ));
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
         ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}
