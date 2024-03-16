
import 'package:breakdown_assist/admin/admin_home.dart';
import 'package:breakdown_assist/admin/admin_home_user.dart';
import 'package:flutter/material.dart';
class Admin_login extends StatefulWidget {
  const Admin_login({super.key});

  @override
  State<Admin_login> createState() => _Admin_loginState();
}

class _Admin_loginState extends State<Admin_login> {
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
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {   // Validation Logic
                        return 'Please enter username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "username",

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        )
                    ),
                  ),
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
                      hintText: "Enter Password",
                      labelText: "Password",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),

                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: 300,
                  height: 45,
                  child: ElevatedButton(onPressed: (){
                    if(_formkey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Admin_home()),
                      );

                    }



                  }, child: Text("LOGIN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),)),
                ),
              ],
            ),

          ),
        ),
      ),

    );
  }
}
