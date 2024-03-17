import 'package:flutter/material.dart';
class Mech_accept_reject extends StatefulWidget {
  const Mech_accept_reject({super.key});

  @override
  State<Mech_accept_reject> createState() => _Mech_accept_rejectState();
}

class _Mech_accept_rejectState extends State<Mech_accept_reject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 440,
          width: 300,
          child: Card(
            color: Colors.blue.shade50,
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                    width: 70,
                    child: Image.asset("assets/images/man.png"),
                ),
                Text("Name",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(
                  height:50 ,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Row(
                    children: [
                      Text("problem  :",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Fuel  leaking")
                    ],
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Row(
                    children: [
                      Text("Place  :",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("palakkad")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Row(
                    children: [
                      Text("Date  :",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("17/03/2024")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Row(
                    children: [
                      Text("Time  :",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("10:00 am")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Row(
                    children: [
                      Text("Contact number  :",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("000000")
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Row(
                      children: [
                        ElevatedButton(onPressed: (){}, child: Text("Accept"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(onPressed: (){}, child: Text("Reject"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),

                      ],
                    ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
