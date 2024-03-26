import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class User_notification extends StatefulWidget {
  const User_notification({super.key});

  @override
  State<User_notification> createState() => _User_notificationState();
}

class _User_notificationState extends State<User_notification> {
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

              FutureBuilder(
                future: FirebaseFirestore.instance.collection("Notification").get(),
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


                  final notification = snapshot.data?.docs ?? [];

                  return Container(
                    height: 1000,
                    width: 390,
                    child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            Divider(
                              indent: 13,
                              endIndent: 60,
                              color: Colors.white,
                              thickness: 5,
                              height: 50,
                            ),
                        itemCount: notification.length,
                        itemBuilder: (BuildContext context, int index) {
                          return
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blueAccent.shade400)
                                ),
                                // height: 120,
                                // width: 150,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(notification[index]["matter"],style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text(notification[index]["content"]),
                                          ],
                                        ),
                                       Spacer(),
                                        Text(notification[index]["time"])
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 290, top: 70),
                                      child: Text(notification[index]["date"]),
                                    )
                                  ],
                                ),

                              ),
                            );
                        }
                    ),
                  );

                },
              ),


            ],
          ),
        ),
      ),
    );
  }
}
