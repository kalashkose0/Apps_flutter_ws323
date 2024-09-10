// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1_catalog/pages/SplashScreen.dart';
import 'package:flutter_application_1_catalog/pages/cleaning.dart';
import 'package:flutter_application_1_catalog/pages/firstPage.dart';
import 'package:flutter_application_1_catalog/pages/homePage.dart';
import 'package:flutter_application_1_catalog/pages/secondPage.dart';
import 'package:flutter_application_1_catalog/pages/thirdPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FixItFast',
      home: SplashScreen(),
      // home: firstScreen(),
      // home: secondPage(),
      // home: thirdPage(),
      // home: homePage(),
      // home: CleanningScreen(),
    );
  }
}
