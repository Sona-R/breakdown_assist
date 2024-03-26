import 'package:flutter/material.dart';
import 'mech_rating.dart';
import 'mech_request.dart';
import 'mech_service.dart';
class Mech_home extends StatefulWidget {
  const Mech_home({super.key});

  @override
  State<Mech_home> createState() => _Mech_homeState();
}

class _Mech_homeState extends State<Mech_home> {
  int _indexNum=0;
  List tabs = [

    Mech_request(),
    Mech_service(),
    Mech_rating(),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          label: "Request",
          icon: Icon(Icons.person_search),
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
