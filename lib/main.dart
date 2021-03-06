import 'package:flutter/material.dart';
import 'homePageJudge.dart';
import 'signInPage.dart';


void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        fontFamily: 'Questrial',
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
    home: SignInPage(),
    ),
  );
}