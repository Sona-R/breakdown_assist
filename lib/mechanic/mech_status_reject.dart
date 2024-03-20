import 'package:flutter/material.dart';
class Mech_status_reject extends StatefulWidget {
  const Mech_status_reject({super.key});

  @override
  State<Mech_status_reject> createState() => _Mech_status_rejectState();
}

class _Mech_status_rejectState extends State<Mech_status_reject> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 150,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade200,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:AssetImage("assets/images/man.png"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Fuel Leaking",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          Text("Date",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          Text("Time",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          Text("Place",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 200, 0),
                  child: Text("Add status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _value,
                        onChanged: (value){
                          setState(() {
                            _value = value!;
                          });

                        }
                    ),
                    Text("Completed",style: TextStyle(fontSize: 18),),

                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                            value: 2,
                            groupValue: _value,
                            onChanged: (value){
                              setState(() {
                                _value = value!;
                              });

                            }
                        ),
                        Text("Not Completed",style: TextStyle(fontSize:18)),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: Text("Reject reason",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height:20 ,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(

                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                    ),


                    height: 150,
                    width: 300,



                    child: TextFormField(

                      maxLines: 5,
                      decoration: InputDecoration(



                          border: InputBorder.none

                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      fixedSize: Size(170,30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: (){},
                    child: Text("Submit",style: TextStyle(fontSize: 20),)),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        )
    );
  }
}
