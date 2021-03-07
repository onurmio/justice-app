import 'package:flutter/material.dart';
import 'UI/signInPage.dart';


void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        fontFamily: 'Questrial',
        accentColor: Color(0XFF2387C1),
      ),
    home: SignInPage(),
    ),
  );
}