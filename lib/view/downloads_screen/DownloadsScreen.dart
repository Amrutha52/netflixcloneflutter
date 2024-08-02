import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/utils/constants/color_constants.dart';
import 'package:netflixclone/utils/constants/image_constants.dart';

class DownloadsScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: colorConstants.mainBlack,
        appBar: AppBar(
          backgroundColor: colorConstants.mainBlack,
          centerTitle: false, // To align text in left
          leadingWidth: 0, // To align text in left
          title: Text("Downloads",
            style: TextStyle(color: colorConstants.mainwhite,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                height: 0.6
            ),
          ),
          actions: <Widget>[
            Icon(Icons.search, color: colorConstants.mainwhite,),
            SizedBox(width: 20,),
            CircleAvatar(
              radius: 15,
              child: Image.asset(imageConstants.USER1_PNG),
            ),
            SizedBox(width: 20,),
          ],

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.settings, color: colorConstants.grey,),
                  SizedBox(width: 10,),
                  Text("Smart Downloads",
                    style: TextStyle(color: colorConstants.grey,
                    fontWeight: FontWeight.bold),)
                ],),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Text("Turn on Downloads for You",
                style: TextStyle(
                  color: colorConstants.mainwhite,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Text("We will download movies and shows just for you, so you will always have something to watch.",
                style: TextStyle(
                  color: colorConstants.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //minimumSize: Size(300, 50),
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //elevation: 10,
                ),
                onPressed: (){

                },
                child: Text("Find videos to download", style: TextStyle(
                  color: colorConstants.mainwhite,
                  fontSize: 16,
                ),)
            ),
          ],
        )
    );
  }
}
