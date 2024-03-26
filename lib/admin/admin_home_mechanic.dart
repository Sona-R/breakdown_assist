import 'package:breakdown_assist/admin/admin_mechanic.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection("Mechsignup").get(),
        builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text("Error:${snapshot.error}"),
            );
          }
          final mech = snapshot.data?.docs ?? [];


          return ListView.separated(
              separatorBuilder: (context, index) =>
                  Divider(thickness: 5, color: Colors.white,),
              itemCount: mech.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Admin_mechanic(id: mech[index].id);
                      }
                      ));
                    },
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
                          SizedBox(width: 20,),


                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Text(mech[index]["username"], style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.only(left: 35),
                                child: Text(mech[index]["phone"],
                                    style: TextStyle(fontSize: 15,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text(
                                    mech[index]["experience"], style: TextStyle(fontSize: 15,)),
                              ),

                              SizedBox(height: 25,),
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                );
              }
          );
        },
      ),

    );
  }
}
