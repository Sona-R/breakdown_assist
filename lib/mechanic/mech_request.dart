import 'package:breakdown_assist/mechanic/Mech_tab_home.dart';
import 'package:breakdown_assist/mechanic/mech_rating.dart';
import 'package:breakdown_assist/mechanic/mech_service.dart';
import 'package:flutter/material.dart';
class Mech_request extends StatefulWidget {
  const Mech_request({super.key});

  @override
  State<Mech_request> createState() => _Mech_requestState();
}

class _Mech_requestState extends State<Mech_request> {
  int _indexNum=0;
  List tabs = [

Mech_tab_home(),
   Mech_service(),
    Mech_rating(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(

          backgroundImage: ExactAssetImage("assets/images/person.png"),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_add))
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          label: "Request",
          icon: Icon(Icons.person_pin_outlined),
        ),
        BottomNavigationBarItem(
          label: "Service",
          icon: Icon(Icons.settings_rounded)
          ,),
        BottomNavigationBarItem(
            label: "Rating",
            icon: Icon(Icons.star))
      ],
          iconSize: 30,
          // showSelectedLabels: false,


          currentIndex: _indexNum,
          onTap: (int index){

            setState(() {
              _indexNum= index;
            });

          }
      ),
      body: tabs.elementAt(_indexNum),


    );
  }
}
