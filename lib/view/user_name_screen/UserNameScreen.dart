import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/dummyDB.dart';
import 'package:netflixclone/utils/constants/color_constants.dart';
import 'package:netflixclone/utils/constants/image_constants.dart';

class UserNameScreen extends StatelessWidget
{
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: colorConstants.mainBlack,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorConstants.mainBlack,
        title: Image.asset(
            height: 40,
            imageConstants.LOGO_PNG),
        actions: [Icon(Icons.edit, color: colorConstants.mainwhite,)],
      ),
      body: Center(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 75),
          shrinkWrap: true,
          itemCount: DummyDB.usersList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                crossAxisCount: 2,
            mainAxisSpacing: 10,
            mainAxisExtent: 120),
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    Image.asset(DummyDB.usersList[index]["imagePath"]!),
                    SizedBox(height: 5,),
                    Text(DummyDB.usersList[index]["userName"]!,
                      style: TextStyle(fontSize: 13.25, color: colorConstants.mainwhite),)
                  ],
                ),
              );
            }),
      ),
    );
  }
}
