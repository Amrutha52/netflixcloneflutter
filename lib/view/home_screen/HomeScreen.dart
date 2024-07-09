import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/dummyDB.dart';
import 'package:netflixclone/utils/constants/color_constants.dart';
import 'package:netflixclone/utils/constants/image_constants.dart';
import 'package:netflixclone/view/home_screen/widgets/movies_card_builder_widget.dart';

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _moviePosterSection(),
            SizedBox(height: 11,),
            _buildPlaySection(),
            SizedBox(height: 40,),
            MoviesCardBuilderWidget(isCircle: true, width: 102, title: "Previews", posterImages: DummyDB.moviePostersListd1,),
           // SizedBox(height: 40,),
            MoviesCardBuilderWidget(title: "",posterImages: DummyDB.moviePostersListd2,),
           // SizedBox(height: 40,),
            MoviesCardBuilderWidget(title: "",posterImages: DummyDB.moviePostersListd3,),
           // SizedBox(height: 40,),
            MoviesCardBuilderWidget(
              height: 251,
              width: 154,
              title: "",
              posterImages: DummyDB.moviePostersListd4,
            )
          ],
        ),
      )
    );
  }

  Widget _buildPlaySection()
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Icon(Icons.add, color: colorConstants.mainwhite,),
                SizedBox(height: 5,),
                Text("My List", style: TextStyle(
                  color: colorConstants.mainwhite,
                  fontSize: 14
                ),
                ),
              ],
            ),
            SizedBox(width: 42,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xffc4c4c4)
              ),
              child: Row(
                children: [
                  Icon(Icons.play_arrow, color: colorConstants.mainBlack, size: 40,),
                  SizedBox(width: 5,),
                  Text("Play", style: TextStyle(
                      color: colorConstants.mainBlack,
                      fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 42,),
            Column(
              children: [
                Icon(Icons.info_outline_rounded, color: colorConstants.mainwhite,),
                SizedBox(height: 5,),
                Text("Info", style: TextStyle(
                    color: colorConstants.mainwhite,
                    fontSize: 14
                ),
                ),
              ],
            ),
          ],
        );
  }

  Widget _moviePosterSection()
  {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24,),
          height: 415,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://images.pexels.com/photos/3342739/pexels-photo-3342739.jpeg?auto=compress&cs=tinysrgb&w=600"))),

        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          height: 415,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [colorConstants.mainBlack, Colors.transparent])
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(imageConstants.NLOGO_PNG),
                    Text("TV Shows", style: TextStyle(color: colorConstants.mainwhite, fontSize: 18),),

                    Text("Movies", style: TextStyle(color: colorConstants.mainwhite, fontSize: 18),),

                    Text("My List", style: TextStyle(color: colorConstants.mainwhite, fontSize: 18),),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(imageConstants.TOP10_PNG),
                  SizedBox(width: 5,),
                  Text("Nigeria Today",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),)
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
