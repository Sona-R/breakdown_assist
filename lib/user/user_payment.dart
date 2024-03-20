import 'package:flutter/material.dart';
class User_payment extends StatefulWidget {
  const User_payment({super.key});

  @override
  State<User_payment> createState() => _User_paymentState();
}

class _User_paymentState extends State<User_payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 230,
            ),
SizedBox(
  height: 150,
    width: 150,
    child: Image.asset("assets/images/tick.png")),

            Text("Successful",style: TextStyle(fontSize: 17),),
SizedBox(
  height: 190,
),
SizedBox(
  height: 50,
  width: 230,
  child: ElevatedButton(onPressed: (){}, child: Text("Back to home page"),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
      ),
    ),),
)
          ],
        ),
      ),
    );
  }
}
