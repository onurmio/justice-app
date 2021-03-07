import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:justice/UI/complainantsStatePage.dart';
import 'package:justice/UI/defendantStatePage.dart';
import 'package:justice/UI/witnessStatePage.dart';

class CasePageJudge extends StatefulWidget {
  String caseNo;

  @override
  _CasePageJudgeState createState() => _CasePageJudgeState();

  CasePageJudge(this.caseNo);
}

class _CasePageJudgeState extends State<CasePageJudge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(widget.caseNo),
      body: _body("Lorem ipsum","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas bibendum purus vel purus ultrices tincidunt. Phasellus ornare lectus mauris, at gravida mi iaculis vel. Nullam nisi nunc, consequat nec libero eu, vehicula laoreet turpis. Etiam magna augue, rhoncus vitae tempus eu, condimentum mollis lorem. Suspendisse id odio nisl. Quisque maximus, orci non laoreet euismod, purus magna vestibulum ex, et pretium ante elit non nibh. Vivamus nec neque at ex elementum pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur ex enim, venenatis eu nunc vehicula, lacinia scelerisque mauris.","Lorem ipsum","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas bibendum purus vel purus ultrices tincidunt. Phasellus ornare lectus mauris, at gravida mi iaculis vel. Nullam nisi nunc, consequat nec libero eu, vehicula laoreet turpis. Etiam magna augue, rhoncus vitae tempus eu, condimentum mollis lorem. Suspendisse id odio nisl. Quisque maximus, orci non laoreet euismod, purus magna vestibulum ex, et pretium ante elit non nibh. Vivamus nec neque at ex elementum pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur ex enim, venenatis eu nunc vehicula, lacinia scelerisque mauris.","5"),
    );
  }

  Widget _appBar(String caseNo) {
    return AppBar(
      backgroundColor: Color(0XFF2387C1),
      centerTitle: true,
      title: RichText(
        text: TextSpan(
          text: "Dava No: ",
          style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white,fontFamily: "Questrial"),
          children: <TextSpan>[
            TextSpan(
                text: caseNo,
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _body(String complaint, String stateSumCom,String crime,String stateSumDef,String witnessNum) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          height: MediaQuery.of(context).size.height / 4,
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
                "Davacı",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Divider(
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Şikayeti: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black,fontFamily: "Questrial"),
                      children: <TextSpan>[
                        TextSpan(
                            text: complaint,
                            style: TextStyle(fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: RichText(
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: "Beyan Özeti: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black,fontFamily: "Questrial"),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  stateSumCom,
                              style: TextStyle(fontWeight: FontWeight.normal)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ComplainantStatePage(),
                    ),
                  );
                },
                child: Text(
                  "Beyanın Tamamını Okumak İçin Tıklayınız",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          height: MediaQuery.of(context).size.height / 4,
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
                "Davalı",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Divider(
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "İşlenen Suç: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black,fontFamily: "Questrial"),
                      children: <TextSpan>[
                        TextSpan(
                            text: crime,
                            style: TextStyle(fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: RichText(
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: "Beyan Özeti: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black,fontFamily: "Questrial"),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                 stateSumDef,
                              style: TextStyle(fontWeight: FontWeight.normal)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DefendantStatePage(),
                      ));
                },
                child: Text(
                  "Beyanın Tamamını Okumak İçin Tıklayınız",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          height: MediaQuery.of(context).size.height / 4,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Bu Davada ",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: "Questrial",
                          color: Colors.black,
                          fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(
                            text: witnessNum,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: ' Tanık Bulunmaktadır',
                            style: TextStyle(fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Beyanını Okumak İstediğiniz Tanık Numarasına Tıklayınız",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WitnessStatePage(),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      child: Text("1"),
                    ),
                  ),
                  CircleAvatar(
                    child: Text("2"),
                  ),
                  CircleAvatar(
                    child: Text("3"),
                  ),
                  CircleAvatar(
                    child: Text("4"),
                  ),
                  CircleAvatar(
                    child: Text("5"),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
