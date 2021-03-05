import 'package:flutter/material.dart';
import 'SignInPage.dart';


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