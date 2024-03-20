import 'package:flutter/material.dart';
class Admin_home_mechanic extends StatefulWidget {
  const Admin_home_mechanic({super.key});

  @override
  State<Admin_home_mechanic> createState() => _Admin_home_mechanicState();
}

class _Admin_home_mechanicState extends State<Admin_home_mechanic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          separatorBuilder: (context,index)=> Divider(thickness: 5,color: Colors.white,),
          itemCount: 4,
          itemBuilder:  (BuildContext context,int index){
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Card(
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(height: 20,),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/man.png"),
                      radius: 30,
                    ),


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text("Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Text("Mobile number",style: TextStyle(fontSize: 15,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Text("Service",style: TextStyle(fontSize: 15,)),
                        ),

                        SizedBox(height: 25,),
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
