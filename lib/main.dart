import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Fade in images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: FadeInImage.assetNetwork(
            placeholder: 'images/5.gif',
            height:800.0,
            fadeInCurve: Curves.bounceIn,
            fadeInDuration: const Duration(seconds:10),
            image: 'https://picsum.photos/250?image=9',
          ),
        ),
      ),
    );
  }
}
