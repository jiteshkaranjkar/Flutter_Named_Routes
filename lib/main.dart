import 'package:flutter/material.dart';

void main() => runApp(new MainRouting());

class MainRouting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme:ThemeData(
            primarySwatch: Colors.deepOrange
        ),
        title: "Named Route Application",
        initialRoute: '/',
        routes:{
          '/':(context) => new FirstScreen(),
          '/second': (context) => new SecondScreen(),
        }
    );
  }
}


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("First Screen"),
      ),
      body: new Center(
        child: new RaisedButton(
            child: new Text('Go to Second Screen'),
            onPressed: (){
              Navigator.pushNamed(context, '/second');
            }
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Screen"),
      ),
      body: new Center(
        child: new Column(
          children:<Widget>[
            RaisedButton(
                child: new Text('Go to First Screen'),
                onPressed: (){ Navigator.pushNamed(context, '/'); }
            ),
            RaisedButton(
                child: new Text('Go Back'),
                onPressed: (){ Navigator.pop(context); }
            ),
          ],
        ),
      ),
    );
  }
}