import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class User_mechanic_bill extends StatefulWidget {
  const User_mechanic_bill({super.key});

  @override
  State<User_mechanic_bill> createState() => _User_mechanic_billState();
}

class _User_mechanic_billState extends State<User_mechanic_bill> {

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
                padding: const EdgeInsets.only(right: 250),
                child: Text("Amount",style: TextStyle(fontSize: 20),),
              ),
              SizedBox(height: 20,),
        
          SizedBox(
            height: 50,
            width: 310,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.currency_rupee),
        
        
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
        
              ),
            ),),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 40,
                width: 220,
                child: ElevatedButton(onPressed: (){}, child: Text("Payment"),
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
