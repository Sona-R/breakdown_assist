import 'package:flutter/material.dart';
class Mech_edit_profile extends StatefulWidget {
  const Mech_edit_profile({super.key});

  @override
  State<Mech_edit_profile> createState() => _Mech_edit_profileState();
}

class _Mech_edit_profileState extends State<Mech_edit_profile> {
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
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 320),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.edit_calendar_outlined)),
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: ExactAssetImage("assets/images/man.png"),
              ),
              SizedBox(
                height: 30,
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
                      hintText: " Name",


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
                    hintText: " Email",


                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),

                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  validator:  (value) {
                    if (value == null || value.isEmpty) {   // Validation Logic
                      return 'Please enter Your work experience';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: " work experience",


                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),

                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  validator:  (value) {
                    if (value == null || value.isEmpty) {   // Validation Logic
                      return 'Please enter your work shop name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: " work shop name",


                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),

                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  validator:  (value) {
                    if (value == null || value.isEmpty) {   // Validation Logic
                      return 'Please enter location';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: " Location",

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



                  }, child: Text("Done",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),
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
