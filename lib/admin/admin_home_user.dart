import 'package:breakdown_assist/admin/admin_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Admin_home_user extends StatefulWidget {
  const Admin_home_user({super.key});

  @override
  State<Admin_home_user> createState() => _Admin_home_userState();
}

class _Admin_home_userState extends State<Admin_home_user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection("Usersignup").get(),
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
          final user = snapshot.data?.docs ?? [];


          return ListView.separated(
              separatorBuilder: (context, index) =>
                  Divider(thickness: 5, color: Colors.white,),
              itemCount: user.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Admin_user(id: user[index].id);
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



                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(user[index]['username'], style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                    user[index]["location"], style: TextStyle(fontSize: 15,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 46),
                                child: Text(user[index]["phone"],
                                    style: TextStyle(fontSize: 15,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 75),
                                child: Text(user[index]["email"], style: TextStyle(fontSize: 15,)),
                              ),
                              SizedBox(height: 15,),
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
