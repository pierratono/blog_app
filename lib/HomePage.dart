import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Blog App"),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: ()=>debugPrint("search")
          ),
          new IconButton(
              icon: new Icon(Icons.add),
              onPressed: ()=>debugPrint("add"))
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new   UserAccountsDrawerHeader(
                accountName: new Text("Mahoro Pierratono Costa"),
                accountEmail: new Text("pierratonoc@gmail.com"),
            decoration: new BoxDecoration(
              color: Colors.purple
            ),
            ),
            new ListTile(
              title: new Text("First Page"),
              leading: new Icon(Icons.cake,color: Colors.purple,),
            ),
            new ListTile(
              title: new Text("Second Page"),
              leading: new Icon(Icons.search,color: Colors.redAccent,),
            ),
            new ListTile(
              title: new Text("Third Page"),
              leading: new Icon(Icons.cached,color: Colors.orange,),
            ),
            new ListTile(
              title: new Text("Fourth Page"),
              leading: new Icon(Icons.menu,color: Colors.green,),
            ),
            new Divider(
              height: 10.0,
              color: Colors.black,
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close,color: Colors.red,),
              onTap: (){
                Navigator.of(context).pop();
              },
            )

          ],
        ),
      ),
    );
  }
}
