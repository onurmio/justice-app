import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class JudgeStatePage extends StatefulWidget {
  @override
  _JudgeStatePageState createState() => _JudgeStatePageState();
}

class _JudgeStatePageState extends State<JudgeStatePage> {
  String judgeState;

  FlutterTts flutterTts = FlutterTts();
  bool isPlayed = false;

  Future _speak() async {
    await flutterTts.setLanguage("tr-TR");
    var result = await flutterTts.speak(judgeState);
    if (result == 1) setState(() => isPlayed = true);
  }

  Future _stop() async {
    var result = await flutterTts.stop();
    if (result == 1) setState(() => isPlayed = false);
  }

  Future _pause() async {
    var result = await flutterTts.pause();
    if (result == 1) setState(() => isPlayed = false);
  }

  @override
  void initState() {
    // TODO: implement initState
    judgeState =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas bibendum purus vel purus ultrices tincidunt. Phasellus ornare lectus mauris, at gravida mi iaculis vel. Nullam nisi nunc, consequat nec libero eu, vehicula laoreet turpis. Etiam magna augue, rhoncus vitae tempus eu, condimentum mollis lorem. Suspendisse id odio nisl. Quisque maximus, orci non laoreet euismod, purus magna vestibulum ex, et pretium ante elit non nibh. Vivamus nec neque at ex elementum pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur ex enim, venenatis eu nunc vehicula, lacinia scelerisque mauris. Phasellus accumsan odio quis ornare venenatis. Quisque et aliquet leo. Nullam eleifend finibus viverra. Morbi condimentum mauris faucibus ultrices suscipit. Vivamus vel tincidunt augue. Nullam feugiat efficitur mi, ac facilisis elit. Morbi luctus maximus leo, vel tincidunt nibh. Etiam maximus pulvinar dolor sit amet finibus. Suspendisse sollicitudin, neque sed elementum ultricies, nulla mauris vehicula risus, nec faucibus purus arcu sed arcu. Phasellus sit amet rutrum augue. Proin non est aliquet, tincidunt tellus eget, feugiat arcu. Aenean feugiat nulla ac felis blandit, id pretium sem vulputate. Fusce et erat eu arcu faucibus vehicula et quis libero. Praesent venenatis nisi ac laoreet lacinia. Etiam tristique, enim at consectetur dictum, nibh dolor porttitor nibh, vel dictum nibh eros sit amet massa.";
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    flutterTts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Color(0XFF2387C1),
      centerTitle: true,
      title: Text("Hakim Kararı"),
      actions: [
        IconButton(
          icon: Icon(Icons.replay),
          onPressed: () {
            _stop();
          },
        ),
        IconButton(
          icon: Icon(!isPlayed ? Icons.play_circle_outline : Icons.pause),
          onPressed: () {
            if (!isPlayed) {
              _speak();
            } else {
              _pause();
            }
          },
        ),
      ],
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 3,
                  spreadRadius: 1)
            ]),
        child: Column(
          children: [
            Text(
              judgeState,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
