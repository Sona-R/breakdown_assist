import 'dart:async';

import 'package:breakdown_assist/who.dart';
import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
      super.initState();
      Timer(Duration(seconds: 3),(){
        Navigator.pushReplacement(

          context,  MaterialPageRoute(builder: (context) => Who()),
        );

      }
      );
    }
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
            child: SizedBox(
              height: 200,
                width: 200,
                child: Image.asset("assets/images/breakdownvehicle.png")),
          ),

    );
  }
}
