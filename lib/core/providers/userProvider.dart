import 'package:flutter/cupertino.dart';
import 'package:justice/core/models/user.dart';

class UserProvider with ChangeNotifier {
  User _user;

  Future load(Map user) async {
    _user = User.fromMap(user);
  }

  User get user => _user;
}
