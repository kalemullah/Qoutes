import 'package:flutter/material.dart';
import 'qoute.dart';
import 'qoute_card.dart';
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:QuoteList() ,

),);

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Qoute> qoutes =[

    Qoute(author:'Oscer wild',text:'Be yourself; every one else is alredy taken'),
    Qoute(author:'Oscer wild',text:'Be yourself; every one else is alredy taken'),
    Qoute(author:'Oscer wild',text:'Be yourself; every one else is alredy taken'),

  ];
  Widget qouteTemplate(qoute){
   return QouteCard(qoute: qoute);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Qoutes'),
      centerTitle: true,
        backgroundColor:Colors.redAccent,
      ),
      body: Column(
        children:qoutes.map((qoute)=>qouteTemplate(qoute

        )).toList(),
      ),
    );
  }
}





