import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
 final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
               decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter your Name',
                labelText: 'Name *'
              ),
              validator: (value) {
                if(value.isEmpty) {
                  return 'Please enter ddsome text';
                }
                return value.contains('@') ? 'Do not use @ char' : null;
              }
            ),
            RaisedButton(
              child:Text('Submit'),
              onPressed: () {
                if(_formKey.currentState.validate()){
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              )
          ],
        )
      ),
    );
  }
}