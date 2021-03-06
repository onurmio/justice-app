import 'package:flutter/material.dart';

class citizenLoginPage extends StatefulWidget {
  @override
  _citizenLoginPageState createState() => _citizenLoginPageState();
}

class _citizenLoginPageState extends State<citizenLoginPage> {
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
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),

                child: TextFormField(
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "T.C kimlik numaranızı giriniz"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: TextFormField(
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Şifreniz"),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
