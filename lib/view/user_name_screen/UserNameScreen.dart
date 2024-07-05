import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/dummyDB.dart';
import 'package:netflixclone/utils/constants/color_constants.dart';
import 'package:netflixclone/utils/constants/image_constants.dart';
import 'package:netflixclone/view/home_screen/HomeScreen.dart';

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
          itemCount: DummyDB.usersList.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                crossAxisCount: 2,
            mainAxisSpacing: 10,
            mainAxisExtent: 120),
            itemBuilder: (context, index) {
            if(index < DummyDB.usersList.length)
              {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen()));
                  },
                  child: Column(
                    children: [
                      Image.asset(DummyDB.usersList[index]["imagePath"]!),
                      SizedBox(height: 5,),
                      Text(DummyDB.usersList[index]["userName"]!,
                        style: TextStyle(fontSize: 13.25, color: colorConstants.mainwhite),)
                    ],
                  ),
                );
              }
            else
              {
                return InkWell(
                  onTap: (){
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(
                      backgroundColor: colorConstants.netflixRed,
                        content: Text("Features not Unavailable")));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    CircleAvatar(
                         radius: 20,
                         child: Image.asset(imageConstants.ADD_PNG),
                         ),
                    Text("Add Profile", style: TextStyle(
                      color: colorConstants.mainwhite,
                      fontSize: 13.25,
                    ),),
                    ],
                  ),
                );
              }

            }),
      ),
    );
  }
}
