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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserSelectionSection(),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit,
                color: colorConstants.mainwhite,),
                SizedBox(width: 6,),
                Text("Manage Profiles",
                  style: TextStyle(color: colorConstants.mainwhite),),
              ],
            ),
            SizedBox(height: 5,),
            _buildReferalSection(),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check,
                  size: 30,
                  color: colorConstants.mainwhite,),
                SizedBox(width: 6,),
                Text("My List",
                  style: TextStyle(color: colorConstants.mainwhite,
                  fontWeight: FontWeight.bold,

                  ),),
              ],
            ),
            Divider(
              color: colorConstants.greyShade1,
            ),
            Text("App Settings",
              style: TextStyle(color: colorConstants.mainwhite,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),),
            Text("Account",
              style: TextStyle(color: colorConstants.mainwhite,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),),
            Text("Help",
              style: TextStyle(color: colorConstants.mainwhite,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),),
            Text("Sign Out",
              style: TextStyle(color: colorConstants.mainwhite,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),),
          ],
        ),
      ),
    );
  }

  Widget _buildUserSelectionSection()
  {
    return SingleChildScrollView(
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
    );
  }

  Container _buildReferalSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 19),
      color: colorConstants.greyShade1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.message_outlined,
                color: colorConstants.mainwhite,),
              SizedBox(width: 6,),
              Text("Tell friends about Netflix",
                style: TextStyle(color: colorConstants.mainwhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
            ],
          ),
          SizedBox(height: 5,),
          Text("Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
            textAlign: TextAlign.justify,
            style: TextStyle(color: colorConstants.mainwhite,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),),
          SizedBox(height: 11,),
          Text("Terms & Conditions",
            textAlign: TextAlign.justify,
            style: TextStyle(
              height: 4,
              color: colorConstants.mainwhite,
              fontSize: 10,
              decoration: TextDecoration.underline,
              // decorationStyle: TextDecorationStyle.dashed,
              decorationColor: colorConstants.mainwhite,
              fontWeight: FontWeight.w500,
            ),),
          SizedBox(height: 1,),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: colorConstants.mainBlack,
                      filled: true,
                      border: InputBorder.none
                  ),
                ),
              ),
              SizedBox(width: 7,),
              Container(
                alignment: Alignment.center,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: colorConstants.mainwhite,
                child: Text("Copy Link",
                  style: TextStyle(
                    color: colorConstants.mainBlack,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 21,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                size: 35,
                Icons.facebook,
                color: colorConstants.mainwhite,),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: colorConstants.mainwhite,
                ),
              ),
              Icon(
                size: 35,
                Icons.email,
                color: colorConstants.mainwhite,),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: colorConstants.mainwhite,
                ),
              ),
              Icon(
                size: 35,
                Icons.telegram,
                color: colorConstants.mainwhite,),
              SizedBox(
                height: 41,
                child: VerticalDivider(
                  color: colorConstants.mainwhite,
                ),
              ),
              Column(
                children: [
                  Icon(
                    size: 35,
                    Icons.more_horiz,
                    color: colorConstants.mainwhite,),
                  Text("More", style: TextStyle(color: colorConstants.mainwhite,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),)
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}
