import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
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

            ],
          )

        ],
      ),

    );

  }

}

