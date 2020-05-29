import 'package:flutter/material.dart';
import 'package:flutterapp3/screens/wrapper.dart';
import 'package:flutterapp3/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:flutterapp3/models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
