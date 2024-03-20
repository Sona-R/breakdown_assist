import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class Use_mechanic_failed extends StatefulWidget {
  const Use_mechanic_failed({super.key});

  @override
  State<Use_mechanic_failed> createState() => _Use_mechanic_failedState();
}

class _Use_mechanic_failedState extends State<Use_mechanic_failed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title:Text("Failed project",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 130,
                  width: 130,
                  child: Image.asset("assets/images/man.png")),
              SizedBox(
                height: 20,
              ),
              Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              SizedBox(
                height: 10,
              ),

              Text("2+ year experience",style: TextStyle(fontSize: 17),),
              SizedBox(
                height: 7,
              ),
              ElevatedButton(onPressed: (){}, child: Text("Available"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: Row(
                  children: [
                    SizedBox(

                      child: RatingBar.builder(
                        itemSize:20 ,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {

                        },
                      ),
                    ),
                    SizedBox(width: 7,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text("Failed reason",style: TextStyle(fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),


                  height: 150,
                  width: 320,



                  child: TextFormField(

                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: "Failed reason show",


                        border: InputBorder.none

                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),



              SizedBox(
                height: 45,
                width: 230,
                child: ElevatedButton(onPressed: (){}, child: Text("Ok"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
