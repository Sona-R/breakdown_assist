

import 'package:breakdown_assist/mechanic/mech_home.dart';
import 'package:breakdown_assist/mechanic/mech_profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Mech_edit_profile extends StatefulWidget {
  const Mech_edit_profile({super.key});

  @override
  State<Mech_edit_profile> createState() => _Mech_edit_profileState();





}

class _Mech_edit_profileState extends State<Mech_edit_profile> {





 @override
  void initState() {
    // TODO: implement initState
   getSavedData();
    super.initState();
  }
  var ID = '';

  Future<void>getSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();



    setState(() {
      ID = prefs.getString('id')!;
      print("get from sp");
    });

  }
  DocumentSnapshot? mech;
  getupdateddata() async{
   mech =
       await FirebaseFirestore.instance.collection("Mechsignup").doc(ID).get();
   print("get from fb");

  }




  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:  getupdateddata(),
      builder: (context,snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Text("Error${snapshot.error}");
        }


        return Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Column(

                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 320),
                    child: IconButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Mech_profile()),
                      );
                    },
                        icon: Icon(
                          Icons.edit_calendar_outlined, color: Colors.black,)),
                  ),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: ExactAssetImage(
                        "assets/images/person.png"),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(


                      decoration: InputDecoration(
                          hintText: mech!['username'],
                          hintStyle: TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.black),


                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0)),
                          )
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                          hintText: mech!['username'],
                          hintStyle: TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.black),


                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0)),
                          )
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                        hintText: mech!['phone'],
                        hintStyle: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black),


                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),

                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                        hintText: mech!['email'],
                        hintStyle: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black),


                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),

                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                        hintText: mech!['experience'],
                        hintStyle: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black),


                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),

                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                        hintText: mech!['shopname'],
                        hintStyle: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black),


                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),

                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                        hintText: " Location",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 300,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Mech_home()),
                        );
                      },
                      child: Text("Done",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight
                            .bold,),
                      ),

                    ),

                  ),
                  SizedBox(
                    height: 30,
                  ),


                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
