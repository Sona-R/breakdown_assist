import 'package:breakdown_assist/admin/admin_login.dart';
import 'package:breakdown_assist/mechanic/mech_login.dart';
import 'package:breakdown_assist/user/user_login.dart';
import 'package:flutter/material.dart';
class Who extends StatefulWidget {
  const Who({super.key});

  @override
  State<Who> createState() => _WhoState();
}

class _WhoState extends State<Who> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            SizedBox(
              height: 150,
                width: 200,
                child: Image.asset("assets/images/breakdownvehicle.png")
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text("Who you are",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(
              height: 35,
            ),
            SizedBox(
              width: 380,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Mech_login()),
                  );
                }, child: Text("Mechanic",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: 380,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const User_login()),
                  );
                }, child: Text("User",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 18),))),
            SizedBox(
              height: 30,
            ),
           TextButton(onPressed: (){
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const Admin_login()),
             );


           }, child: Text("Admin Login",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18),))
          ],
        ),
        ),
      ),
    );
  }
}
