import 'package:flutter/material.dart';
import 'package:justice/core/providers/casesProvider.dart';
import 'package:justice/core/providers/userProvider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ProviderRegister extends StatelessWidget {
  UserProvider _userProvider;
  CasesProvider _casesProvider;
  Widget _child;

  ProviderRegister(this._child);

  Future _load() async {
    _userProvider = UserProvider();
    _casesProvider = CasesProvider();
    await _casesProvider.load();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _load(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider<UserProvider>(
                create: (context) => _userProvider,
              ),
              ChangeNotifierProvider<CasesProvider>(
                create: (context) => _casesProvider,
              ),
            ],
            child: MaterialApp(home: this._child),
          );
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
