import 'package:flutter/material.dart';
class Mech_home_requests extends StatefulWidget {
  const Mech_home_requests({super.key});

  @override
  State<Mech_home_requests> createState() => _Mech_home_requestsState();
}

class _Mech_home_requestsState extends State<Mech_home_requests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              Container(
                height: 900,
                width: 470,
                child: ListView.separated(
                    separatorBuilder: (context,index)=>Divider(
                      indent: 13,
                      endIndent: 60,
                      color:Colors.white ,
                      thickness: 20,
                      height: 50,
                    ),
                    itemCount: 10,
                    itemBuilder: (BuildContext context,int index){
                      return
                        Container(

                          height: 100,
                          width: 200,


                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.center,


                            children: [
                              SizedBox(
                                  height:50,
                                  width: 50,
                                  child:

                                      Column(
                                        children: [
                                          Image.asset("assets/images/man.png"),


                                        ],
                                      ),


                                  ),
                              SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 220),
                                child: Column(
                                  children: [
                                    Text("Fuel leaking",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("Date",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("Time",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("Place",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),

                            ],

                          ),

                        );
                    }


                ),



              )
            ],
          ),
        ),
      ),

    );
  }
}
