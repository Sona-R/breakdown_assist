import 'package:flutter/material.dart';
class Mech_home_requests extends StatefulWidget {
  const Mech_home_requests({super.key});

  @override
  State<Mech_home_requests> createState() => _Mech_home_requestsState();
}

class _Mech_home_requestsState extends State<Mech_home_requests> {
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
                    Column(
                      children: [
                        SizedBox(height: 10,),

                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/man.png"),
                          radius: 35,
                        ),
                        Text("Name",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                        SizedBox(height: 10,),
                      ],
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Fuel Leaking",style: TextStyle(fontSize: 15,),),
                        Text("Date",style: TextStyle(fontSize: 15,)),
                        Text("Time",style: TextStyle(fontSize: 15,)),
                        Text("Place",style: TextStyle(fontSize: 15,)),
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
