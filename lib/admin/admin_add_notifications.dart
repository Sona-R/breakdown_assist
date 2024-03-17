import 'package:flutter/material.dart';
class Admin_add_notification extends StatefulWidget {
  const Admin_add_notification({super.key});

  @override
  State<Admin_add_notification> createState() => _Admin_add_notificationState();
}

class _Admin_add_notificationState extends State<Admin_add_notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child: Column(
    children: [
      SizedBox(height: 100,),
      Padding(
        padding: const EdgeInsets.only(right: 275),
        child: Text("Enter matter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "matter",
  
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
  
          ),
        ),
      ),
      SizedBox(height: 30,),
      Padding(
        padding: const EdgeInsets.only(right: 270),
        child: Text("Enter content",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(

decoration: BoxDecoration(
  border: Border.all(color: Colors.black)
),


          height: 200,



          child: TextFormField(
            maxLines: 5,
            decoration: InputDecoration(
              hintText: "content...",

              border: InputBorder.none

            ),
          ),
        ),
      ),
      SizedBox(
        height: 180,
      ),
      SizedBox(
        width: 200,
          child: ElevatedButton(onPressed: (){
            Navigator.pop(context);

          }, child: Text("Submit",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))),


  
  
  
    ],
  ),
),
    );
  }
}
