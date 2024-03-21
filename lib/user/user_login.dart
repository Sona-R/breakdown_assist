import 'package:flutter/material.dart';
class User_login extends StatefulWidget {
  const User_login({super.key});

  @override
  State<User_login> createState() => _User_loginState();
}

class _User_loginState extends State<User_login> {
  final SnackBar _snackBar = SnackBar(content: Text("Successfully registered"),duration: Duration(seconds: 3),);

  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
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
                Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
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
                Padding(
                  padding: const EdgeInsets.only(left: 210),
                  child: Text("Forgot password ?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: 300,
                  height: 45,
                  child: ElevatedButton(onPressed: (){
                    if(_formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(_snackBar);


                    }



                  }, child: Text("LOGIN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),)),

                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:90 ),
                  child: Row(
                    children: [
                      Text("Do you have account?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                      TextButton(onPressed: (){}, child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),))


                    ],
                  ),
                )
              ],
            ),

          ),
        ),
      ),


    );
  }
}
