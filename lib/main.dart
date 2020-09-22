// Flutter code sample for ListTile

// Here is an example of a custom list item that resembles a Youtube related
// video list item created with [Expanded] and [Container] widgets.
//
// ![Custom list item a](https://flutter.github.io/assets-for-api-docs/assets/widgets/custom_list_item_a.png)

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class CustomListItem extends StatelessWidget {

  const CustomListItem({
    this.thumbnail,
    this.title,
    this.user,
    this.viewCount
  });

  final Widget thumbnail;
  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex:2,
            child: thumbnail
          ),
          Expanded(
            flex:3,
            child: _VideoDescription(
              title: title,
              user: user,
              viewCount: viewCount
            ),
          ),
          const Icon(
            Icons.more_vert,
            size: 16.0
          )
        ],),
    );
  }
}

class _VideoDescription extends StatelessWidget {

  const _VideoDescription({
    Key key,
    this.title, 
    this.user,
    this.viewCount
  }) : super(key : key);

 final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0
            )
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 10.0)
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            '$viewCount views',
            style: const TextStyle(fontSize: 10.0)
          )
        ],
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {

  MyStatelessWidget({Key  key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      itemExtent: 106.0,
      children: <CustomListItem>[
        CustomListItem(
          user: "NVRR",
          viewCount: 9393,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.blue),
          ),
           title: 'The Flutter Tutorials'
        ),
         CustomListItem(
          user: "NVR",
          viewCount: 936,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.amber),
          ),
           title: 'The Flutter Begginer Tutorials'
        )
      ],
    );
  }
}