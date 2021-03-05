import 'package:flutter/material.dart';
import 'homePage.dart';
import 'signInPage.dart';


void main() {
  runApp(MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        fontFamily: "Questrial",
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
    ),
  );
}