import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Color(0XFF2387C1),
      title: Image.asset("assets/images/justiceLogo1.png",scale: 3,),
    );
  }
}
