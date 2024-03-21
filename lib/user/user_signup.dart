import 'package:breakdown_assist/user/user_login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class User_signup extends StatefulWidget {
  const User_signup({super.key});

  @override
  State<User_signup> createState() => _User_signupState();
}

class _User_signupState extends State<User_signup> {
  var usernamectrl =TextEditingController();
  var phonectrl =TextEditingController();
  var emailctrl =TextEditingController();
  var passwordctrl =TextEditingController();
  Future<dynamic> usersignup() async {
    await FirebaseFirestore.instance.collection('Usersignup').add({
      "username": usernamectrl.text,
      "phone": phonectrl.text,
      "email": emailctrl.text,
      "password": passwordctrl.text,
      "status": 0
    }).then((value) {
      print("success");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const User_login())
      );
    });

  }
  final SnackBar _snackBar = SnackBar(content: Text("Successfully registered"),duration: Duration(seconds: 3),);


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
                    controller: usernamectrl,
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
                    controller: phonectrl,

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
                    controller: emailctrl,

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
                    controller: passwordctrl,

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
                        ScaffoldMessenger.of(context).showSnackBar(_snackBar);
                        usersignup();


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
