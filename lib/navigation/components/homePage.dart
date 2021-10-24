import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mannys_app/globalCommon.dart';
import 'package:mannys_app/scanner/bookHomePage.dart';

import 'searchPage.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite, 
          color: Color.fromARGB(65, 100, 150, 100),
          child: mainWidget(),
        ),
      ),
    );
  }

  Widget mainWidget(){
    return SingleChildScrollView(
        child: Column(
          children: [
            checkoutReturnButton(),
        ])
      );
  }

  Widget checkoutReturnButton() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          height: 50,
          decoration: buttonDecor(),
          child: TextButton(
            onPressed: () => goToScanner(),
            child: Text(
              'Checkout/Return Books',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }

  void goToScanner(){
    Navigator.push(
      context,
        MaterialPageRoute(
            builder: (context) =>
                BookHomePage(title: 'Book Home  Page')));
  }
}