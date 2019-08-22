import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackbar"),
        ),
        body: SnackPage(),
      ),
    );
  }
}

class SnackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          child: Text("Show Snackbar"),
          onPressed: () {
            final snackbar = SnackBar(
              content: Text("Esse é o nosso Snackbar"),
              duration: Duration(seconds: 3),
              action: SnackBarAction(
                label: "Desfazer",
                onPressed: () {
                  // Codigo para desfazer alteração
                },
              ),
            );
            Scaffold.of(context).showSnackBar(snackbar);
          },
        ),
      ),
    );
  }
}
