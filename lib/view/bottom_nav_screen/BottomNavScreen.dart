import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/utils/constants/color_constants.dart';
import 'package:netflixclone/view/comingsoon_screen/ComingSoonScreen.dart';
import 'package:netflixclone/view/downloads_screen/DownloadsScreen.dart';
import 'package:netflixclone/view/home_screen/HomeScreen.dart';
import 'package:netflixclone/view/more_screen/MoreScreen.dart';
import 'package:netflixclone/view/search_screen/SearchScreen.dart';

class BottomNavScreen extends StatefulWidget
{
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen>
{
  int selectedIndex = 0;
  List<Widget> myScreens = [
    Homescreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadsScreen(),
    MoreScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[selectedIndex],
      backgroundColor: colorConstants.mainBlack,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: colorConstants.mainBlack,
        selectedItemColor: colorConstants.mainwhite,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white,),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white,),
            label: "Search"
          ),
          BottomNavigationBarItem(
            label: "Comming Soon",
            icon: Icon(Icons.video_collection_outlined, color: Colors.white,),
          ),
          BottomNavigationBarItem(
            label: "Downloads",
            icon: Icon(Icons.file_download_sharp, color: Colors.white,),
          ),
          BottomNavigationBarItem(
            label: "More",
            icon: Icon(Icons.dehaze, color: Colors.white,),
          ),
        ],
        onTap: (value){
          selectedIndex = value;
          setState(() {

          });
        },
      ),
    );
  }
}
