import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Usr_mechanic_details extends StatefulWidget {
  const Usr_mechanic_details({super.key});

  @override
  State<Usr_mechanic_details> createState() => _Usr_mechanic_detailsState();
}

class _Usr_mechanic_detailsState extends State<Usr_mechanic_details> {
  int selectedvalue=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title:Text("Needed Service",style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 130,
                  width: 130,
                  child: Image.asset("assets/images/man.png")),
              SizedBox(
                height: 10,
              ),
              Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              SizedBox(
                height: 30,
              ),
              Text("Contact number",style: TextStyle(fontSize: 16),),
              Text("2+ year experience",style: TextStyle(fontSize: 16),),
              SizedBox(
                height: 7,
              ),
              ElevatedButton(onPressed: (){}, child: Text("Available"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                ),),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text("Add needed service",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
        
                      height: 60,
                      width: 300,
                      child: DropdownButton(
                          value: selectedvalue,
                          items:[
                            DropdownMenuItem(child: Text("Fuel leaking"),
                              value: 1,),
                            DropdownMenuItem(child: Text("Change oil and filter"),
                              value: 2,),
                            DropdownMenuItem(child: Text("Heating AC"),
                              value: 3,),
                            DropdownMenuItem(child: Text("Battery check"),
                              value: 4,),
                          ], onChanged: (int? value){
                        setState(() {
                          selectedvalue=value!;
                        });
                      }),
        
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_rounded)),
                  ],
                ),
              ),
             SizedBox(
               height:40 ,
             ),
              Padding(
                padding: const EdgeInsets.only(right: 310),
                child: Text("Place",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
        
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 40,
                width: 220,
                child: ElevatedButton(onPressed: (){}, child: Text("Request"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
