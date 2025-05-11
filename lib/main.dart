import 'package:dco/Screens/Splash.dart';
import 'package:dco/routes.dart';
import 'package:dco/utilities/app_font.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DCO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppFont.fontFamily,
        // ignore: deprecated_member_use
        accentColor: const Color(0xffD5F274),
      ),
      routes: routes,
      home: Splash(),
    );
  }
}
