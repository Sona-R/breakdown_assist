import 'package:flutter/material.dart';
class User_profile extends StatefulWidget {
  const User_profile({super.key});

  @override
  State<User_profile> createState() => _User_profileState();
}

class _User_profileState extends State<User_profile> {
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,

                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: ExactAssetImage("assets/images/man.png"),
                ),
                Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),

                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text("Enter Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {   // Validation Logic
                        return 'Please enter name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: " name",


                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        )
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Text("Enter phone number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    validator:  (value) {
                      if (value == null || value.isEmpty) {   // Validation Logic
                        return 'Please Phone number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: " phone number",


                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text("Enter Email",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    validator:  (value) {
                      if (value == null || value.isEmpty) {   // Validation Logic
                        return 'Please enter email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter email",


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
                    onPressed: (){
                      if(formkey.currentState!.validate()) {


                      }



                    }, child: Text("Done",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),

                  ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17)
                      ),
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
      ),

    );
  }
}
