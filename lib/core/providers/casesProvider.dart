import 'package:flutter/cupertino.dart';
import 'dart:math';
import 'dart:convert';

class CasesProvider with ChangeNotifier {
  List<Map> _closedCases = [];
  List<Map> _ongoingCases = [];

  int closed = 5;
  int ongoing = 7;

  String getRandString() {
    var random = Random.secure();
    return random.nextInt(9999).toString();
  }

  Future load() async {
    _closedCases = [
      {"status": false, "case_no": getRandString()},
      {"status": false, "case_no": getRandString()},
      {"status": false, "case_no": getRandString()},
      {"status": false, "case_no": getRandString()},
      {"status": false, "case_no": getRandString()},
    ];
    _ongoingCases = [
      {"status": true, "case_no": getRandString()},
      {"status": true, "case_no": getRandString()},
      {"status": true, "case_no": getRandString()},
      {"status": true, "case_no": getRandString()},
      {"status": true, "case_no": getRandString()},
      {"status": true, "case_no": getRandString()},
      {"status": true, "case_no": getRandString()},
    ];
  }

  List<Map> get closedCases => _closedCases;

  List<Map> get ongoingCases => _ongoingCases;

  List<Map> get cases => [..._closedCases, ..._ongoingCases];
}
