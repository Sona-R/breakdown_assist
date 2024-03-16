import 'package:flutter/material.dart';
class Admin_user extends StatefulWidget {
  const Admin_user({super.key});

  @override
  State<Admin_user> createState() => _Admin_userState();
}

class _Admin_userState extends State<Admin_user> {
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child: Form(
    key: _formkey,
    child: Container(
      color: Colors.white54,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            CircleAvatar(
              radius: 60,
              backgroundImage: ExactAssetImage("assets/images/man.png"),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            SizedBox(
              height: 10,
            ),
            Text("Location",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                validator:  (value) {
                  if (value == null || value.isEmpty) {   // Validation Logic
                    return 'Please enter username';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {   // Validation Logic
                    return 'Please enter phone number';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: "Enter phone number",
                    labelText: "phone number",

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {   // Validation Logic
                    return 'Please enter mail';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: "Enter Email",
                    labelText: "Email",

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    )
                ),
              ),
            ),
            SizedBox(
              height:70
            ),
            Padding(
              padding: const EdgeInsets.only(left:100 ),
             child:  Row(
                children: [
                  ElevatedButton(


                      onPressed: (){}, child: Text("Accept"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                      
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(onPressed: (){}, child: Text("Reject"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                ],
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
),
    );
  }
}
