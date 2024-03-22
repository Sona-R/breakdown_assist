import 'package:breakdown_assist/mechanic/Mech_tab_home.dart';
import 'package:breakdown_assist/mechanic/mech_rating.dart';
import 'package:breakdown_assist/mechanic/mech_service.dart';
import 'package:flutter/material.dart';

import 'mech_notification.dart';
class Mech_request extends StatefulWidget {
  const Mech_request({super.key});

  @override
  State<Mech_request> createState() => _Mech_requestState();
}

class _Mech_requestState extends State<Mech_request> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(

          backgroundImage: ExactAssetImage("assets/images/person.png"),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Mech_notification()),
            );
          }, icon: Icon(Icons.notification_add,color: Colors.amber,))
        ],
      ),


    );
  }
}
