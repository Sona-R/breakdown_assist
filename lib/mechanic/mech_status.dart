import 'package:flutter/material.dart';
class Mech_status extends StatefulWidget {
  const Mech_status({super.key});

  @override
  State<Mech_status> createState() => _Mech_statusState();
}

class _Mech_statusState extends State<Mech_status> {

  String _value='';


var a,b,c;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
               SizedBox(
                 height: 40,
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
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 200, 0),
                  child: Text("Add status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: 20,
                ),Container(
                  height: 150,
                  width: double.infinity,
                  child: Column(children: [
                    RadioListTile(
                        activeColor: Colors.blue,
                        title: Text(
                          "Completed",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w900),
                        ),
                        value: "b",
                        groupValue:_value,
                        onChanged: (value) {
                          if (value == "b") {
                            a = 1;
                          }
                          setState(() {
                            print(value);
                            _value = value.toString();
                          });
                        }),
                    RadioListTile(
                        activeColor: Colors.blue,
                        title: Text("Not completed",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w900)),
                        value: "f",
                        groupValue: _value,
                        onChanged: (value) {
                          print(value);
                          if (value == "f") {
                            a = 2;
                          }
                          _value = value.toString();
                          setState(() {});
                        }),
                  ]),
                ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: a ==1? Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 225, 0),
                        child: Text("Amount",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ),


                  SizedBox(
                    height:20 ,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 90
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          prefixIcon: Icon(Icons.currency_rupee)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
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
                      child: Text("Submit",style: TextStyle(fontSize: 20),))
                ],
              ): a==2?Column(
                children: [
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
                ],
              ):Text("choose an option"),
            ),


            ],
          ),
        )
        ),
    );
  }
}
