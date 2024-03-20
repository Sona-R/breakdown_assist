import 'package:breakdown_assist/user/User_home_mechanic.dart';
import 'package:breakdown_assist/user/user_home__request.dart';
import 'package:flutter/material.dart';
class User_home extends StatefulWidget {
  const User_home({super.key});

  @override
  State<User_home> createState() => _User_homeState();
}

class _User_homeState extends State<User_home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/person.png"),
          ),
          title: Container(
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
      height: 35,
           width: 200,

            child: TextFormField(
              decoration: InputDecoration(


                hintText: " search",
                prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search,)),


                border: InputBorder.none,

              ),
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon:Icon(Icons.notification_add,color: Colors.amber,))
          ],
        ),


        bottomSheet: TabBar(tabs: [Tab(child: Text("Mechanic"),
        ),
          Tab(child:Text("Request") ,)
        ]),
         body:  TabBarView(children: [
           User_Home_mechanic(),
           User_home_request(),
         ]),
      ),
    );
  }
}
