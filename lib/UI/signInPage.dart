import 'package:flutter/material.dart';
import 'package:justice/UI/loginPageCitizen.dart';
import 'package:justice/UI/loginPageJudge.dart';

import 'homePageCitizen.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
              Image.asset(
                "assets/images/justiceLogo1.png",
              ),
              Text(
                "JUSTICE",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPageJudge(),
                      ));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.fromLTRB(46.0, 30.0, 46.0, 0.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.person_add_alt_1),
                        Spacer(),
                        Text(
                          "Yetkili Girişi",
                          style: TextStyle(
                            color: Colors.grey[420],
                            fontSize: 18,
                          ),

                        ),
                        Spacer(),
                        Icon(Icons.person_add_alt_1,color: Colors.white,),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPageCitizen(),
                      ));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.fromLTRB(46.0, 30.0, 46.0, 30.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.person),
                        Spacer(),
                        Text(
                          "Vatandaş Girişi",
                          style: TextStyle(color: Colors.grey[420], fontSize: 18),
                        ),
                        Spacer(),
                        Icon(Icons.person,color: Colors.white,),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
