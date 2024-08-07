import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/dummyDB.dart';
import 'package:netflixclone/utils/constants/color_constants.dart';
import 'package:netflixclone/view/comingsoon_screen/widget/custom_video_card.dart';
import 'package:netflixclone/view/comingsoon_screen/widget/new_arrival_card.dart';

class ComingSoonScreen extends StatelessWidget
{
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorConstants.mainBlack,
      appBar: AppBar(
        titleSpacing: 0, // leading and title thammil ulla space avashyathine edukum
        backgroundColor: Colors.transparent,
        // Circle avatar leading aayi kodukumbol, leadingnte default size motham circle avatar edukum.
        // Centerileke kondevaran vendi Center kodukane
        leading: Center(
          child: CircleAvatar(
            radius: 15,
            child: Icon(Icons.notifications_sharp, size: 20,),
          ),
        ),
        title: Text("Notification",
          style: TextStyle(color: colorConstants.mainwhite,
          fontSize: 16,
          fontWeight: FontWeight.bold
          ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // To generate List
            Column(
              children: List.generate(
                DummyDB.newArrivals.length,
                    (index) => NewArrivalCard(
                  imageUrl: DummyDB.newArrivals[index]["imagePath"].toString(),
                        newArrival : DummyDB.newArrivals[index]["newArrival"].toString(),
                        movieName: DummyDB.newArrivals[index]["movieName"].toString(),
                        date: DummyDB.newArrivals[index]["date"].toString(),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: List.generate(
                DummyDB.customVideoCardD1.length,
                    (index) => CustomVideoCard(
                  imageUrl: DummyDB.customVideoCardD1[index]["imagePath"].toString(),
                      date : DummyDB.customVideoCardD1[index]["date"].toString(),
                      movieName: DummyDB.customVideoCardD1[index]["movieName"].toString(),
                      movieDescription:DummyDB.customVideoCardD1[index]["movieDescription"].toString(),

                ),
              ),
            )
          ],
        ),
      )
    );
  }
}


