import 'package:flutter/material.dart';

class BotonesPage extends StatefulWidget {
  BotonesPage({Key key}) : super(key: key);

  @override
  _BotonesPageState createState() => _BotonesPageState();
}

class _BotonesPageState extends State<BotonesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Tipo de botones'),
       ),
       body: Center(
         child: Column(
           children: <Widget>[
             Container(
               width: 250.0,
               height: 100.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue, 
                  style: BorderStyle.solid),
              ),
              child: RaisedButton(
                color:Colors.blue,
                textColor: Colors.white,
                onPressed: () {  },
                child: Text('RaisedButton'),
              ),
             ),
           ],),
           )
    );
  }
}