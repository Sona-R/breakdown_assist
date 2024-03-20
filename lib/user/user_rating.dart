import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class User_rating extends StatefulWidget {
  const User_rating({super.key});

  @override
  State<User_rating> createState() => _User_ratingState();
}

class _User_ratingState extends State<User_rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title:Text("Mechanic Bill",style: TextStyle(fontWeight: FontWeight.bold),),
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
              SizedBox(
                height: 10,
              ),


              Padding(
                padding: const EdgeInsets.only(right: 10),
                child:
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

              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text("Add rating",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),

              SizedBox(


                child: RatingBar.builder(
                  itemSize:60 ,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 0.50),
                  itemBuilder: (context, _) => Icon(
                    Icons.star_border_rounded,
                    color: Colors.black,
                  ),
                  onRatingUpdate: (rating) {

                  },
                ),
              ),
              SizedBox(
                height: 120,
              ),
              SizedBox(
                height: 40,
                width: 220,
                child: ElevatedButton(onPressed: (){}, child: Text("Submit"),
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
