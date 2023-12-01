import 'package:flutter/material.dart';
import 'CustomPopupMenu.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new DWidget(),
    );
  }
}

class DWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("options demo"),
        actions: <Widget>[
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              return CustomPopupMenu.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      body: new Column(
        children: <Widget>[
          Container(
            child: Text(
              'Created By',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(5.0, 30.0, 10.0, 50.0),
            child: Text(
              'Juan Linares, Matthew Twinker, & Matheus Silva', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, ),
            ),
          ),
          Expanded(
            flex: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    //color: Colors.green,
                    //padding: EdgeInsets.all(30.0),
                    child: //Text('Juan', textAlign: TextAlign.center,
                  Image.asset('assets/jl.png',
                  height: 120,
                  width: 120,)// ) //add image here
                  //Image.asset('asset/ms.jpg'),
                ),
                Container(
                  //padding: EdgeInsets.all(10.0),
                  child: //Text('Matt'), //add image here
                  Image.asset('assets/mt.png',
                  height: 120,
                  width: 120,)
                ),
                Container(
                  //color: Colors.blue,
                  //padding: EdgeInsets.all(30.0),
                  child: //Text('Matheus'), 
                  Image.asset('assets/ms.png',
                  height: 120,
                  width: 120,)// add image here
                ),
              ],
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              //margin: EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 10.0),
              child: Text ('12/1/2019', textAlign: TextAlign.center,),
            ),
          ),
        ],
      ),
    );
  }
}
