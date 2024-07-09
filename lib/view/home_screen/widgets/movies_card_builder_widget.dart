import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/utils/constants/color_constants.dart';

class MoviesCardBuilderWidget extends StatelessWidget
{
  const MoviesCardBuilderWidget({super.key, this.isCircle = false, this.height = 161, this.width = 103, required this.title, required this.posterImages});
  final bool isCircle ;  // This property is using for Container shape changes
  final double height, width;
  final String title;
  final List<String> posterImages; // To Display Images

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(title, style: TextStyle(color: colorConstants.mainwhite,
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 22,),
        // Width is main property of circle , so when we want circle we take width property
        SizedBox(
          height: isCircle ? width : height,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 12,),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: posterImages.length,
            itemBuilder: (context, index) =>
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: isCircle?BoxShape.circle:BoxShape.rectangle,
                        color: Colors.yellow,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                        posterImages[index]
                      ))
                    ),
                  height: height,
                  width: width,
                  ),
                ), separatorBuilder: (context, index) => SizedBox(width: 7,),
          ),
        ),
        SizedBox(height: 22,),
      ],
    );
  }
}
