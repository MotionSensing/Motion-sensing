import 'package:flutter/material.dart';
import 'package:my_app/LandingPage/LandingPage.dart';
import 'package:my_app/Navbar/Navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motion Sensing',
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
        primarySwatch: Colors.green,
        fontFamily: "Arial"
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromRGBO(0, 0, 255, 1.0)
              ]),
        ),
        child: Column(
          children: [
            Navbar(), 
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: LandingPage(),
            )
          ]
        ),
      ),
    );
  }
}
