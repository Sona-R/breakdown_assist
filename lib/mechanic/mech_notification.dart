import 'package:flutter/material.dart';
class Mech_notification extends StatefulWidget {
  const Mech_notification({super.key});

  @override
  State<Mech_notification> createState() => _Mech_notificationState();
}

class _Mech_notificationState extends State<Mech_notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        title: Text("Notification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
        centerTitle: true,
      ),

        body: SingleChildScrollView(
        child: Center(
        child: Column(
        children: [
          SizedBox(
            height: 20,
          ),

        Container(
        height: 1000,
        width: 470,
        child: ListView.separated(
        separatorBuilder: (context,index)=>Divider(
      indent: 13,
      endIndent: 60,
      color:Colors.white ,
      thickness: 20,
      height: 50,
    ),
    itemCount: 10,
    itemBuilder: (BuildContext context,int index){
          return
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent.shade400)
                  ),
                  height: 120,
                  width: 150,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("  Admin notification"),
                          SizedBox(width: 165,),
                          Text("10.00 am")
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 265,top: 70),
                        child: Text("16/3/2024"),
                      )
                    ],
                  ),
                
                ),
              );
    }
        ),
    ),


    ],
    ),
    ),
        ),
    );
  }
}
