import 'package:breakdown_assist/mechanic/Mech_home_requests.dart';
import 'package:breakdown_assist/mechanic/mech_home_accepted.dart';
import 'package:flutter/material.dart';
class Mech_tab_home extends StatefulWidget {
  const Mech_tab_home({super.key});

  @override
  State<Mech_tab_home> createState() => _Mech_tab_homeState();
}

class _Mech_tab_homeState extends State<Mech_tab_home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(

            backgroundImage: ExactAssetImage("assets/images/person.png"),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notification_add,color: Colors.amber,))
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
