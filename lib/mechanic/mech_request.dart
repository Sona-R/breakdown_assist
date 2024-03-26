
import 'package:breakdown_assist/mechanic/mech_edit_profile.dart';
import 'package:breakdown_assist/mechanic/mech_rating.dart';
import 'package:breakdown_assist/mechanic/mech_service.dart';
import 'package:flutter/material.dart';

import 'Mech_home_requests.dart';
import 'mech_home_accepted.dart';
import 'mech_notification.dart';
class Mech_request extends StatefulWidget {
  const Mech_request({super.key});

  @override
  State<Mech_request> createState() => _Mech_requestState();
}

class _Mech_requestState extends State<Mech_request> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Mech_edit_profile()),
              );
            },
            child: CircleAvatar(

              backgroundImage: ExactAssetImage("assets/images/person.png"),
            ),
          ),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Mech_notification()),
              );
            }, icon: Icon(Icons.notification_add,color: Colors.amber,))
      ],

        ),
        body: Column(
          children: [

            TabBar(tabs: [Tab(child: Text("Requests"),
            ),
              Tab(child:Text("Accepted") ,)
            ]),
            Expanded(
              child: TabBarView(children: [
                Mech_home_requests(),
                Mech_home_accepted(),
              ]),
            )
          ],
        ),


      ),
    );
  }
}
