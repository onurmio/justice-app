import 'package:flutter/material.dart';
import 'homePage.dart';
import 'signInPage.dart';


void main() {
  runApp(MaterialApp(
      home: SignInPage(),
      theme: ThemeData(
        fontFamily: "Questrial",
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
    ),
  );
}