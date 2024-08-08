import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
  /**
   * ImageCarouselWithIndicator
   */
  CarouselController buttonCarouselController = CarouselController();
  int _current = 0;  // current index

  final List<Widget> imageSliders = DummyDB.moviePostersListd3
      .map((item) => Container(
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(item, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  // child: Text(
                  //  ' ${DummyDB.verticalSliderList.indexOf(item)} ',
                  //   style: TextStyle(color: Colors.white,
                  //     fontSize: 20.0, fontWeight: FontWeight.bold,),
                  // ),
                ),
              ),
            ],
          )),
    ),
  )).toList();

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
            MoviesCardBuilderWidget(isCircle: true, customWidth: 102, title: "Previews",
              posterImages: DummyDB.moviePostersListd1,
              haveInfoCard: true,
            ),
           // SizedBox(height: 40,),
            MoviesCardBuilderWidget(title: "Continue Watching for Emenalo",posterImages: DummyDB.moviePostersListd2,),
           // SizedBox(height: 40,),
            MoviesCardBuilderWidget(title: "Popular on Netflix",
              posterImages: DummyDB.moviePostersListd3,),
           // SizedBox(height: 40,),
            MoviesCardBuilderWidget(
              customHeight: 251,
              customWidth: 154,
              title: "Trending Now",
              posterImages: DummyDB.moviePostersListd4,
            ),
            MoviesCardBuilderWidget(title: "Top 10 in Nigeria Today",
              posterImages: DummyDB.moviePostersListd6,),
            MoviesCardBuilderWidget(title: "My List",
              posterImages: DummyDB.moviePostersListd7,),
            MoviesCardBuilderWidget(title: "African Movies",
              posterImages: DummyDB.moviePostersListd8,),
            MoviesCardBuilderWidget(title: "Nollywood Movies & TV",
              posterImages: DummyDB.moviePostersListd9,),
            MoviesCardBuilderWidget(title: "Netflix Originals",
              posterImages: DummyDB.moviePostersListd10,),
            MoviesCardBuilderWidget(title: "Watch It Again",
              posterImages: DummyDB.moviePostersListd11,),
            MoviesCardBuilderWidget(title: "New Releases",
              posterImages: DummyDB.moviePostersListd12,),
            MoviesCardBuilderWidget(title: "TV Thrillers & Mysteries",
              posterImages: DummyDB.moviePostersListd13,),
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
          child:  CarouselSlider(
            items: imageSliders,
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason){
                setState(() {
                  _current = index;
                });
              },

            ),

          ),
        ),
        // Container(
        //   padding: EdgeInsets.symmetric(horizontal: 24,),
        //   height: 415,
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //           fit: BoxFit.cover,
        //           image: NetworkImage("https://images.pexels.com/photos/3342739/pexels-photo-3342739.jpeg?auto=compress&cs=tinysrgb&w=600"))),
        //
        // ),

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
