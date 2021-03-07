import 'package:flutter/material.dart';
import 'package:justice/UI/casePageJudge.dart';
import 'package:justice/core/providers/casesProvider.dart';
import 'package:justice/core/providers/userProvider.dart';
import 'package:provider/provider.dart';

import 'casePageCitizen.dart';

class CaseListPageCitizen extends StatefulWidget {
  @override
  _CaseListPageCitizenState createState() => _CaseListPageCitizenState();
}

class _CaseListPageCitizenState extends State<CaseListPageCitizen> {
  CasesProvider _casesProvider;

  @override
  Widget build(BuildContext context) {
    _casesProvider = Provider.of<CasesProvider>(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: [
            _allCasesBody(),
            _doneCasesBody(),
            _postponedCasesBody(),
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
            child: Text("Devam Eden Davalar", textAlign: TextAlign.center),
          ),
          Tab(
            child: Text("Sonuçlanan Davalar", textAlign: TextAlign.center),
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
            itemBuilder: (context, index) {
              Map _case = _casesProvider.cases[index];
              return _listCard(_case["case_no"], _case["status"]);
            },
            itemCount: _casesProvider.cases.length,
          ),
        ),
      ],
    );
  }

  Widget _doneCasesBody() {
    return Column(
      children: [
        _searchBox(),
        Flexible(
          child: ListView.builder(
            itemBuilder: (context, index) {
              Map _case = _casesProvider.closedCases[index];
              return _listCard(_case["case_no"], _case["status"]);
            },
            itemCount: _casesProvider.closedCases.length,
          ),
        ),
      ],
    );
  }

  Widget _postponedCasesBody() {
    return Column(
      children: [
        _searchBox(),
        Flexible(
          child: ListView.builder(
            itemBuilder: (context, index) {
              Map _case = _casesProvider.ongoingCases[index];
              return _listCard(_case["case_no"], _case["status"]);
            },
            itemCount: _casesProvider.ongoingCases.length,
          ),
        ),
      ],
    );
  }

  Widget _listCard(String caseNo, bool caseState) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CasePageJudge(caseNo),
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
      height: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          border: Border.all(
            color: Colors.grey,
            width: 0.8,
          )),
      child: Padding(
        padding: const EdgeInsets.only(right: 8, left: 4),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          maxLines: 1,
          cursorColor: Color(0XFF2387C1),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search),
            border: InputBorder.none,
            hintText: "Arama",
          ),
        ),
      ),
    );
  }
}
