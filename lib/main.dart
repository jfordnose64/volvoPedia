import 'package:flutter/material.dart';
import 'package:volvoPedia/Views/home.dart';
import 'package:volvoPedia/Views/item.dart';
import 'package:volvoPedia/Views/models.dart';
import 'package:volvoPedia/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => App(),
        '/second': (context) => SecondScreen(),
        '/home': (context) => Home(),
        '/models': (context) => Models()
      },
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blueGrey,
          brightness: Brightness.light,
          primaryColor: Colors.grey),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('First Screen'), backgroundColor: Colors.blueGrey),
      body: Center(
        // children: <Widget> [
        //   Text: ('Hello')
        // ],
        child: RaisedButton(
          child: Text('Volvo screen'),
          onPressed: () {
            // Navigate to the second screen when tapped.
            Navigator.pushNamed(context, '/home');
            //pushnamed is used to push to a named route
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Text('Second Page'),
      ),
    );
  }
}
