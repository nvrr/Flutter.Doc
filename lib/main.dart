import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Returning Data',
  home: HomeScreen(),
));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Returning Data Demo')
      ),
      body: Center(child: SelectionButton())
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override

  
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Pick an Option, any option!'),
      onPressed: () {
        _navigateAndDisplaySelection(context);
      }
    );
    
  }
  Future _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => SelectionScreen())
      );

      Scaffold.of(context)
      ..removeCurrentSnackBar()..showSnackBar(SnackBar(content: Text('$result')));
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an Option')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text('Yep!'),
                onPressed: () {
                  Navigator.pop(context, 'Yep!');
                }
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text('Nope'),
                onPressed: () {
                  Navigator.pop(context, 'Nope.');
                },
              ),
            )
          ],
        ),
      )
    );
  }
}