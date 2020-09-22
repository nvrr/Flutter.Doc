import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final appTitle = 'ListView Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle)
    );
  }
}

class MyHomePage extends StatelessWidget {

  final String title;
  MyHomePage({Key key, this.title}) : super(key : key);

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 400, 200];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color:Colors.amber[colorCodes[index]],
            
          child: Center(child: Text('Entry ${entries[index]}'),),
          );
        },
       separatorBuilder: (BuildContext context, int index) => const Divider(),
      )
    );
  }
}

/*
 ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color:Colors.amber[colorCodes[index]],
            
          child: Center(child: Text('Entry ${entries[index]}'),),
          );
        },
      )
*/

/*
ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Container(
           child: const Center(child: Text('Entry A')),
           height: 50,
           color: Colors.amber[600]
          ),
           Container(
           child: const Center(child: Text('Entry B')),
           height: 50,
           color: Colors.amber[400]
          ),
           Container(
           child: const Center(child: Text('Entry c')),
           height: 50,
           color: Colors.amber[200]
          )
        ],
      )
      */