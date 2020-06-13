// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_app/pages/home_page.dart';
import 'package:practice_app/pages/log_in.dart';
import 'package:practice_app/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.pref = await SharedPreferences.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.pref.getBool('LoggedIn')==true?HomePage(): LogInPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        HomePage.routeName: (context) => HomePage(),
        LogInPage.routeName: (context) => LogInPage(),
      },
    );
  }
}
