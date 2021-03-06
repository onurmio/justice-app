import 'package:flutter/material.dart';
import 'package:justice/UI/casePageJudge.dart';

import 'casePageCitizen.dart';

class CaseListPageCitizen extends StatefulWidget {
  @override
  _CaseListPageCitizenState createState() => _CaseListPageCitizenState();
}

class _CaseListPageCitizenState extends State<CaseListPageCitizen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: [
            _allCasesBody(),
            _doneCasesBody(),
            _postPonedCasesBody(),
          ],
        ),
        appBar: _appBar(),
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Color(0XFF2387C1),
      title: Text("Davalar"),
      bottom: TabBar(
        indicatorColor: Colors.white,
        tabs: [
          Tab(
            child: Text("Tüm Davalar",textAlign: TextAlign.center,),
          ),
          Tab(
            child: Text("Sonuçlanan Davalar",textAlign: TextAlign.center),
          ),
          Tab(
            child: Text("Ertelenen Davalar",textAlign: TextAlign.center),
          )
        ],
      ),
    );
  }

  Widget _allCasesBody() {
    return Column(
      children: [
        _searchBox(),
        Flexible(
          child: ListView.builder(
            itemBuilder: (context, index) => _listCard(),
            itemCount: 10,
          ),
        ),
      ],
    );
  }

  Widget _doneCasesBody() {
    return Text("Sonuçlanan Davalar");
  }

  Widget _postPonedCasesBody() {
    return Text("Ertelenen Davalar");
  }

  Widget _listCard() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CasePageCitizen(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 3,
                spreadRadius: 1)
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Dava No:",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "60439351d688381f49257c02",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Dava Durumu:",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Sonuçlandı",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.circle,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchBox() {
    return Container(
      margin: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      height: 42,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          border: Border.all(
            color: Colors.grey,
            width: 0.8,
          )),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Icon(
              Icons.search,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8, left: 4),
              child: TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Arama",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
