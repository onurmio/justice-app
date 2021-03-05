import 'package:flutter/material.dart';

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

  Widget _body(){

    return Container(

      color: Color(0XFF2387C1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Image.asset("assets/images/justiceLogo1.png",),
              Text("JUSTICE", style: TextStyle(fontSize: 32,color: Colors.white),),
            ],
          ),

          Column(
            children: [
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.fromLTRB(46.0,30.0,46.0,0.0),
                  child: Center(
                    child: Text(
                      "YETKİLİ GİRİŞİ",
                      style: TextStyle(color: Colors.grey[420],fontSize: 18,),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){

                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.fromLTRB(46.0,30.0,46.0,30.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      "VATANDAŞ GİRİŞİ",
                      style: TextStyle(color: Colors.grey[420],fontSize: 18),
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

