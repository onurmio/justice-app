import 'package:flutter/material.dart';
import 'package:justice/UI/casePageJudge.dart';

class CaseListPageJudge extends StatefulWidget {
  @override
  _CaseListPageJudgeState createState() => _CaseListPageJudgeState();
}

class _CaseListPageJudgeState extends State<CaseListPageJudge> {
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
            child: Text(
              "Tüm Davalar",
              textAlign: TextAlign.center,
            ),
          ),
          Tab(
            child: Text("Sonuçlanan Davalar", textAlign: TextAlign.center),
          ),
          Tab(
            child: Text("Ertelenen Davalar", textAlign: TextAlign.center),
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
            itemBuilder: (context, index) =>
                _listCard("60439351d688381f49257c02", true),
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
    return Text("Devam Eden Davalar");
  }

  Widget _listCard(String caseNo, bool caseState) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CasePageJudge(),
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
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      caseNo,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                      caseState ? "Sonuçlandı" : "Devam Ediyor",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Icon(
                  Icons.circle,
                  color: caseState ? Colors.green : Colors.yellow,
                ),
              ],
            )
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
