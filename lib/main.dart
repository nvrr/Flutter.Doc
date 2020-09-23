import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Orientation Demo';

    return MaterialApp(
      title: appTitle,
      home:OrientationList(title: appTitle)
    );
  }
}

class OrientationList extends StatelessWidget {

  OrientationList({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title)
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,

            children: List.generate(100, (index){
              return Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(
                    fontSize: 20.0,
                    
                  )
                )
              );
            })
          );
        }
      )
    );
  }
}