import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../dummyDB.dart';
import '../../utils/constants/color_constants.dart';

class UserNameCard extends StatelessWidget
{
  const UserNameCard({super.key,
    required this.imagePath,
    required this.userName,
    this.onCardPressed, this.height, this.width });
  final String imagePath;
  final String userName;
  final void Function()? onCardPressed;  // Function Passing
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: onCardPressed,
      child: Column(
        children: [
          Image.asset(
              height: height ?? 60,  // Height null aanenkil 60
              width: width ?? 65, // Width null aanenkil 65
              imagePath),
          SizedBox(height: 5,),
          Text(userName,
            style: TextStyle(fontSize: 13.25, color: colorConstants.mainwhite),)
        ],
      ),
    );
  }
}
