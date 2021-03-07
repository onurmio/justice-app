import 'package:flutter/material.dart';
import 'package:justice/UI/homePageJudge.dart';

import 'homePageCitizen.dart';

class LoginPageCitizen extends StatefulWidget {
  @override
  _LoginPageCitizenState createState() => _LoginPageCitizenState();
}

class _LoginPageCitizenState extends State<LoginPageCitizen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      color: Color(0XFF2387C1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Image.asset("assets/images/justiceLogo1.png"),
              Text(
                "JUSTICE",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 3,
                        spreadRadius: 1)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  maxLines: 1,
                  cursorColor: Color(0XFF2387C1),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                      hintText: "T.C kimlik numaranızı giriniz"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 3,
                        spreadRadius: 1)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  maxLines: 1,
                  cursorColor: Color(0XFF2387C1),
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: InputBorder.none, hintText: "Şifreniz"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageCitizen(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 12,
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 3,
                          spreadRadius: 1)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Center(
                      child: Text(
                        "Giriş Yap",
                        style: TextStyle(fontSize: 32),
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
