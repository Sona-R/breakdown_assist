import 'package:flutter/material.dart';
class User_signup extends StatefulWidget {
  const User_signup({super.key});

  @override
  State<User_signup> createState() => _User_signupState();
}

class _User_signupState extends State<User_signup> {
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
                SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset("assets/images/breakdownvehicle.png")),
                SizedBox(
                  height: 30,
                ),
                Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 240),
                  child: Text("Enter username",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {   // Validation Logic
                        return 'Please enter username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: " username",


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

                Padding(
                  padding: const EdgeInsets.only(right: 255),
                  child: Text("Enter password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    validator:  (value) {
                      if (value == null || value.isEmpty) {   // Validation Logic
                        return 'Please enter password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: " Password",

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



                    }, child: Text("Sign Up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),
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
