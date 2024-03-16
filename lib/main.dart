import 'package:breakdown_assist/admin/admin_mechanic.dart';
import 'package:breakdown_assist/admin/admin_user.dart';
import 'package:breakdown_assist/splash_scrn.dart';
import 'package:flutter/material.dart';

import 'admin/Admin home tab.dart';
import 'admin/admin_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),

    );
  }
}
