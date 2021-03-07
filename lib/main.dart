import 'package:flutter/material.dart';
import 'package:justice/core/providerRegister.dart';
import 'UI/signInPage.dart';


void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        fontFamily: 'Questrial',
        primaryColor: Color(0XFF2387C1),
      ),
    home: ProviderRegister(SignInPage()),
    ),
  );
}