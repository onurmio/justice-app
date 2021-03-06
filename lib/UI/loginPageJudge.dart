import 'package:flutter/material.dart';
import 'package:justice/UI/homePageJudge.dart';
import 'package:justice/core/models/serverResponse.dart';
import 'package:justice/core/modules/server.dart';
import 'package:justice/core/providers/userProvider.dart';
import 'package:provider/provider.dart';

class LoginPageJudge extends StatefulWidget {
  @override
  _LoginPageJudgeState createState() => _LoginPageJudgeState();
}

class _LoginPageJudgeState extends State<LoginPageJudge> {
  TextEditingController _citizenNo = TextEditingController();
  TextEditingController _registerNo = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF2387C1),
      body: _body(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top:84.0),
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
                    controller: _citizenNo,
                    maxLines: 1,
                    cursorColor: Color(0XFF2387C1),
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: InputBorder.none,
                        hintText: "T.C kimlik numaran??z?? giriniz"),
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
                    controller: _registerNo,
                    textAlignVertical: TextAlignVertical.center,
                    maxLines: 1,
                    cursorColor: Color(0XFF2387C1),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.book),
                        border: InputBorder.none,
                        hintText: "Sicil Numaran??z?? Giriniz"),
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
                    controller: _password,
                    textAlignVertical: TextAlignVertical.center,
                    maxLines: 1,
                    cursorColor: Color(0XFF2387C1),
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        border: InputBorder.none,
                        hintText: "??ifreniz"),
                  ),
                ),
                GestureDetector(
                  onTap: () => login(),
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
                      "Giri?? Yap",
                      style: TextStyle(fontSize: 32),
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  login() async {
    String token = (await Server().get('/token',
            body: {"citizen_no": _citizenNo.text, "password": _password.text}))
        .data["token"];
    ServerResponse response = (await Server()
        .get('/judge', token: token, body: {"register_no": _registerNo.text}));
    if (response.isSuccessful) {
      Provider.of<UserProvider>(context, listen: false)
          .load(response.data["user"]);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePageJudge(),
        ),
      );
    }
  }
}
