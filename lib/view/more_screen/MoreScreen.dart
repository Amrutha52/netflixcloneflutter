import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/dummyDB.dart';
import 'package:netflixclone/utils/constants/color_constants.dart';
import 'package:netflixclone/utils/constants/image_constants.dart';
import 'package:netflixclone/view/global_widgets/UserNameCard.dart';

class MoreScreen extends StatefulWidget
{
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen>
{
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: colorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: List.generate(4,
                        (index) => UserNameCard(
                          onCardPressed: (){
                            selectedIndex = index;
                            setState(() {
                            });
                          },
                          height: index == selectedIndex ? 80 : 60, // index == selectedIndex aanenkil valuthaka allenkil 60 or 65 aaki koduka
                            width: index == selectedIndex ? 83 : 65,
                            imagePath: DummyDB.usersList[index]["imagePath"].toString(),
                            userName: DummyDB.usersList[index]["userName"].toString()))
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    height: 60,
                    width: 63,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: colorConstants.mainwhite)
                    ),
                    child: Center(
                      child: Icon(Icons.add,
                      color: colorConstants.mainwhite,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
