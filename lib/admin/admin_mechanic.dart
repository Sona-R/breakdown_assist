// import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Admin_mechanic extends StatefulWidget {
  const Admin_mechanic({super.key,required this.id});
  final id;

  @override
  State<Admin_mechanic> createState() => _Admin_mechanicState();
}

class _Admin_mechanicState extends State<Admin_mechanic> {
  DocumentSnapshot? mech;
  
  getData() async {
    mech = await FirebaseFirestore.instance
        .collection("Mechsignup")
        .doc(widget.id)
        .get();
  }

  void accept(id) {
    setState(() {
      FirebaseFirestore.instance
          .collection("Mechsignup")
          .doc(id)
          .update({'status':1});
      print("accept");
    });
  }

  void rejects(id) {
    setState(() {
      FirebaseFirestore.instance
          .collection("Mechsignup")
          .doc(id)
          .update({'status':2});
      print("reject");
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: getData(),
          builder: (context,snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Text("Error${snapshot.error}");
            }

            return Container(
              color: Colors.white54,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: ExactAssetImage(
                          "assets/images/man.png"),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text( mech?['username'], style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 17),),
                    SizedBox(
                      height: 10,
                    ),
                    Text('location', style: TextStyle(fontWeight: FontWeight
                        .bold, fontSize: 17),),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 255),
                      child: Text("Enter username", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(

                        // validator: (value) {
                        //   if (value == null ||
                        //       value.isEmpty) { // Validation Logic
                        //     return 'Please mech username';
                        //   }
                        //   return null;
                        // },
                        decoration: InputDecoration(
                          hintText: mech?['username'],


                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0)),
                          ),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 220),
                      child: Text("Enter phone number", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        // validator: (value) {
                        //   if (value == null ||
                        //       value.isEmpty) { // Validation Logic
                        //     return 'Please enter phone number';
                        //   }
                        //   return null;
                        // },
                        decoration: InputDecoration(
                            hintText: mech?['phone'],


                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(8.0)),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 285),
                      child: Text("Enter Email", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        // validator: (value) {
                        //   if (value == null ||
                        //       value.isEmpty) { // Validation Logic
                        //     return 'Please enter mail';
                        //   }
                        //   return null;
                        // },
                        decoration: InputDecoration(
                            hintText: mech?['email'],


                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(8.0)),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 210),
                      child: Text("Enter work experience", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        // validator: (value) {
                        //   if (value == null ||
                        //       value.isEmpty) { // Validation Logic
                        //     return 'Please enter work experience';
                        //   }
                        //   return null;
                        // },
                        decoration: InputDecoration(
                            hintText: mech?['experience'],


                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(8.0)),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 170),
                      child: Text(
                        "Enter your work shop name", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        // validator: (value) {
                        //   if (value == null ||
                        //       value.isEmpty) { // Validation Logic
                        //     return 'Please shop name';
                        //   }
                        //   return null;
                        // },
                        decoration: InputDecoration(
                            hintText: mech?['shopname'],


                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(8.0)),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 230),
                      child: Text("Enter your location", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        // validator: (value) {
                        //   if (value == null ||
                        //       value.isEmpty) { // Validation Logic
                        //     return 'Please enter your location';
                        //   }
                        //   return null;
                        // },
                        decoration: InputDecoration(
                            hintText: 'location',


                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(8.0)),
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                        height: 70
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child:mech!['status']==0? Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              accept(widget.id);
                            }, child: Text("Accept"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),),
                          SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              rejects(widget.id);
                            }, child: Text("Reject"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                          ),
                        ],
                      ):mech!["status"]==1? Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          child: Text("Accepted"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ): Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          child: Text("rejected"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )


                  ],
                ),
              ),
            );
          },
        ),
      ),

    );
  }
}
