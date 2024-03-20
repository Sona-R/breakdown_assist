import 'package:flutter/material.dart';
class Mech_home_accepted extends StatefulWidget {
  const Mech_home_accepted({super.key});

  @override
  State<Mech_home_accepted> createState() => _Mech_home_acceptedState();
}

class _Mech_home_acceptedState extends State<Mech_home_accepted> {
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
                        SizedBox(height: 20,),
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/man.png"),
                          radius: 37,
                        ),
                        Text("Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(
                      width: 20,
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

                      ElevatedButton(onPressed: (){}, child: Text("Payment pending"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                        ),),

                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
