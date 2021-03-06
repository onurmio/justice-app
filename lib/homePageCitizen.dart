import 'package:flutter/material.dart';
import 'package:justice/casesPage.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageCitizen extends StatefulWidget {
  @override
  _HomePageCitizenState createState() => _HomePageCitizenState();
}

class _HomePageCitizenState extends State<HomePageCitizen> {
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
      title: Image.asset(
        "assets/images/justiceLogo1.png",
        scale: 3,
      ),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 5,
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
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Onur Mollaibrahimoğlu",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "TC Kimlik No:",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 4,),
                  Text(
                    "33423523555",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CasesPage(),
                ));
          },
          child: Container(
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height / 5,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.wysiwyg,
                  size: 48,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Davalar",
                  style: TextStyle(fontSize: 48),
                )
              ],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _launchURL();
                },
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.all(8.0),
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 3,
                            spreadRadius: 1)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.menu_book, size: 32),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Anayasa",
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(8.0),
                padding: EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 3,
                          spreadRadius: 1)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.share, size: 32),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Paylaş",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  _launchURL() async {
    const url = 'https://www.tbmm.gov.tr/anayasa/anayasa_2018.pdf';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
