import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class Mech_rating extends StatefulWidget {
  const Mech_rating({super.key});

  @override
  State<Mech_rating> createState() => _Mech_ratingState();
}

class _Mech_ratingState extends State<Mech_rating> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,

        title: Text("Rating",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:

          ListView.separated(
                separatorBuilder: (context,index)=> Divider(thickness: 5,color: Colors.white,),
                itemCount: 3,
                itemBuilder:  (BuildContext context,int index){
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Card(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              SizedBox(height: 20,),
                              CircleAvatar(
                                backgroundImage: AssetImage("assets/images/man.png"),
                                radius: 35,
                              ),
                              Text("Name",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold))
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("engine",style: TextStyle(fontSize: 15,),),
                              Text("Date",style: TextStyle(fontSize: 15,)),
                              Text("Time",style: TextStyle(fontSize: 15,)),
                              Text("Place",style: TextStyle(fontSize: 15,)),
                            ],
                          ),
                      SizedBox(width: 35,),

                      Column(
                        children: [
                          Text("Rating"),
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
                                setState(() {
                                  this.rating = rating;
                                });

                              },
                            ),
                          ),
                          Text("$rating")
                        ],
                      ),
                        ],
                      ),
                    ),
                  );
                }
            ),



    );
  }
}
