import 'package:breakdown_assist/admin/admin_login.dart';
import 'package:breakdown_assist/admin/admin_mechanic.dart';
import 'package:breakdown_assist/admin/admin_user.dart';
import 'package:breakdown_assist/mechanic/Mech_home_requests.dart';
import 'package:breakdown_assist/mechanic/Mech_tab_home.dart';
import 'package:breakdown_assist/mechanic/mech_edit_profile.dart';
import 'package:breakdown_assist/mechanic/mech_home_accepted.dart';

import 'package:breakdown_assist/mechanic/mech_login.dart';
import 'package:breakdown_assist/mechanic/mech_notification.dart';
import 'package:breakdown_assist/mechanic/mech_profile.dart';
import 'package:breakdown_assist/mechanic/mech_rating.dart';
import 'package:breakdown_assist/mechanic/mech_request.dart';
import 'package:breakdown_assist/mechanic/mech_service.dart';
import 'package:breakdown_assist/mechanic/mech_service_accept_reject.dart';
import 'package:breakdown_assist/mechanic/mech_signup.dart';
import 'package:breakdown_assist/mechanic/mech_status_completed.dart';
import 'package:breakdown_assist/mechanic/mech_status_reject.dart';
import 'package:breakdown_assist/splash_scrn.dart';
import 'package:flutter/material.dart';

import 'admin/Admin home tab.dart';
import 'admin/admin_add_notifications.dart';
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
      home: Mech_service(),

    );
  }
}
