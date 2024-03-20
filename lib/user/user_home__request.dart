import 'package:flutter/material.dart';
class User_home_request extends StatefulWidget {
  const User_home_request({super.key});

  @override
  State<User_home_request> createState() => _User_home_requestState();
}

class _User_home_requestState extends State<User_home_request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        SizedBox(
                          height: 20,
                        ),

                        Text("Name",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                        Text("Date",style: TextStyle(fontSize: 16,)),
                        Text("Time",style: TextStyle(fontSize: 16,)),
                        Text("Fuel leaking",style: TextStyle(fontSize: 16,)),
                        SizedBox(
                          height: 20,
                        ),

                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: ElevatedButton(onPressed: (){}, child: Text("Approved",style: TextStyle(color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}


