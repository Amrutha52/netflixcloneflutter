import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/utils/constants/color_constants.dart';
import 'package:netflixclone/utils/constants/image_constants.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorConstants.mainBlack,
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24,),
            height: 415,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://images.pexels.com/photos/3342739/pexels-photo-3342739.jpeg?auto=compress&cs=tinysrgb&w=600"))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(imageConstants.NLOGO_PNG),
                    Text("TV Shows", style: TextStyle(color: colorConstants.mainwhite, fontSize: 18),),

                    Text("Movies", style: TextStyle(color: colorConstants.mainwhite, fontSize: 18),),

                    Text("My List", style: TextStyle(color: colorConstants.mainwhite, fontSize: 18),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_alert, size: 20, color: Colors.white,),
                    Text("data", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),)
                  ],
                )
              ],
            ),
          ),)
    );
  }
}
