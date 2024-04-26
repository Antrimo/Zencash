import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zencash/auth/login.dart';
import 'package:zencash/onbard/dot.dart';
import 'package:zencash/onbard/page_one.dart';
import 'package:zencash/onbard/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
