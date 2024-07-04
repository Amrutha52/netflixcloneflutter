import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    );
  }
}
