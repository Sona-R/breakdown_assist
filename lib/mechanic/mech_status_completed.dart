import 'package:flutter/material.dart';
class Mech_status_completed extends StatefulWidget {
  const Mech_status_completed({super.key});

  @override
  State<Mech_status_completed> createState() => _Mech_status_completedState();
}

class _Mech_status_completedState extends State<Mech_status_completed> {
  String ? status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                color: Colors.blue.shade200,
                height: 150,
                width: 300,
                      
                child: Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      SizedBox(
                        height:60,
                          width: 60,
                          child: Row(
                            children: [
                              Image.asset("assets/images/man.png"),
                              SizedBox(width: 100,),
                              Column(
                                children: [
                                  Text("Fuel leaking"),
              
                                  Text("Date"),
                                  Text("time"),
                                  Text("Place"),
                                ],
                              ),
                            ],
                          )),
                      
                      
                      SizedBox(height: 10,),
                      Text("Name",style: TextStyle(fontWeight: FontWeight.bold),),
              
                      
                    ],
                      
                      
                                ),
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text("Add Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // Text("Gender :",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),


                      SizedBox(
                        height: 30,
                        width: 220,
                        child: ListTile(
                            title: Text("Completed"),
                            leading: Radio(value: "Completed", groupValue: status, onChanged:(String ? Value){
                              setState(() {
                                status=Value;
                              });
                            }
                            )
                        ),
                      ),

                      SizedBox(
                        height: 30,
                        width: 220,
                        child: ListTile(
                          title:Text ("Notcompleted"),
                          leading: Radio(value: "Notcompleted",
                              groupValue: status,
                              onChanged: (String ? value){
                                setState(() {
                                  status = value;
                                });
                              }),
                        ),
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 230
                ),
                child: Text("Amount",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: 260,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "2000/-",


                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),

                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(onPressed: (){}, child: Text("Submit"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),),
              )


            ],
          ),
        ),
      ),
    );
  }
}
