import 'package:flutter/material.dart';
class User_Home_mechanic extends StatefulWidget {
  const User_Home_mechanic({super.key});

  @override
  State<User_Home_mechanic> createState() => _User_Home_mechanicState();
}

class _User_Home_mechanicState extends State<User_Home_mechanic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,
      body: ListView.separated(
          separatorBuilder: (context,index)=> Divider(thickness: 5,color: Colors.white,),
          itemCount: 3,
          itemBuilder:  (BuildContext context,int index){
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Card(
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/man.png"),
                          radius: 30,
                        ),
                        Text("Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text("2+ year experience",style: TextStyle(fontSize: 16,),),
                        Text("Fuel leaking",style: TextStyle(fontSize: 16,),),
                       SizedBox(
                         height: 10,
                       ),
                       SizedBox(
                         height: 30,
                         width: 130,
                         child: ElevatedButton(onPressed: (){}, child: Text("Available"),
                           style: ElevatedButton.styleFrom(
                             backgroundColor: Colors.green,
                             foregroundColor: Colors.white,
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10)
                             ),
                           ),),
                       ),
                        SizedBox(
                          height: 20,
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}

