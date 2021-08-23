import 'package:flutter/material.dart';
import 'qoute.dart';
class QouteCard extends StatelessWidget {
  final Qoute qoute;
  QouteCard({this.qoute});
  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              qoute.text,
              style:TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox( height: 6.0,),
            Text(
              qoute.author,
              style:TextStyle(
                fontSize: 16.0,
                color: Colors.grey[800],
              ),
            ),
           SizedBox(height: 8.0),
            FlatButton.icon(
                onPressed:() {},
                label: Text('delete qoute'),
                icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}