import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/utils/constants/color_constants.dart';

import 'package:flutter/material.dart';


class MoviesCardBuilderWidget extends StatelessWidget {
  const MoviesCardBuilderWidget({
    super.key,
    this.isCircle = false,
    this.customHeight = 161,
    this.customWidth = 103,
    required this.posterImages,
    this.haveInfoCard = false, required this.title,
  });
  final bool isCircle; //  true for making items circular
  final double customHeight;
  final double customWidth;
  final List<String> posterImages;
  final bool haveInfoCard;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Title",
            style: TextStyle(
                color: colorConstants.mainwhite,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 22),
        SizedBox(
          height: isCircle ? customWidth : customHeight,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 12),
            itemCount: posterImages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(posterImages[index])),
                  color: Colors.orange,
                  shape: isCircle ? BoxShape.circle : BoxShape.rectangle),
              height: customHeight,
              width: customWidth,
              child: Visibility(
                visible: haveInfoCard,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 3,
                      color: Colors.grey,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      color: colorConstants.mainBlack,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(
              width: 7,
            ),
          ),
        ),
        SizedBox(height: 22),
      ],
    );
  }
}



// class MoviesCardBuilderWidget extends StatelessWidget
// {
//   const MoviesCardBuilderWidget({super.key, this.isCircle = false, this.height = 161, this.width = 103, required this.title, required this.posterImages,  this.haveInfoCard = false});
//   final bool isCircle ;  // This property is using for Container shape changes
//   final double height, width;
//   final String title;
//   final List<String> posterImages; // To Display Images
//   final bool haveInfoCard;
//
//   @override
//   Widget build(BuildContext context)
//   {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 15),
//           child: Text(title, style: TextStyle(color: colorConstants.mainwhite,
//               fontSize: 20,
//               fontWeight: FontWeight.bold),),
//         ),
//         SizedBox(height: 22,),
//         // Width is main property of circle , so when we want circle we take width property
//         SizedBox(
//           height: isCircle ? width : height,
//           child: ListView.separated(
//             padding: EdgeInsets.symmetric(horizontal: 12,),
//             shrinkWrap: true,
//             scrollDirection: Axis.horizontal,
//             itemCount: posterImages.length,
//             itemBuilder: (context, index) =>
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     child: Container(
//                       padding: EdgeInsets.symmetric(vertical: 7),
//                       color: colorConstants.mainBlack,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Container(
//                             height: 3,
//                             color: Colors.grey,
//                             // child: Row(
//                             //   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             //   children: [
//                             //     Icon(Icons.info_outline, color: colorConstants.mainwhite,),
//                             //     Spacer(),
//                             //     Icon(Icons.more_vert, color: colorConstants.mainwhite,)
//                             //   ],
//                             // ),
//                           ),
//
//                         ],
//                       ),
//                     ),
//                     decoration: BoxDecoration(
//                       shape: isCircle?BoxShape.circle:BoxShape.rectangle,
//                         color: Colors.yellow,
//                       image: DecorationImage(
//                           fit: BoxFit.cover,
//                           image: NetworkImage(
//                         posterImages[index]
//                       ))
//                     ),
//                   height: height,
//                   width: width,
//                   ),
//                 ), separatorBuilder: (context, index) => SizedBox(width: 7,),
//           ),
//         ),
//         SizedBox(height: 22,),
//       ],
//     );
//   }
// }


//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:netflixclone/utils/constants/color_constants.dart';
//
// class MoviesCardBuilderWidget extends StatelessWidget
// {
//   const MoviesCardBuilderWidget({super.key, this.isCircle = false, this.height = 161, this.width = 103, required this.title, required this.posterImages,  this.haveInfoCard = false});
//   final bool isCircle ;  // This property is using for Container shape changes
//   final double height, width;
//   final String title;
//   final List<String> posterImages; // To Display Images
//   final bool haveInfoCard;
//
//   @override
//   Widget build(BuildContext context)
//   {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 15),
//           child: Text(title, style: TextStyle(color: colorConstants.mainwhite,
//               fontSize: 20,
//               fontWeight: FontWeight.bold),),
//         ),
//         SizedBox(height: 22,),
//         // Width is main property of circle , so when we want circle we take width property
//         SizedBox(
//           height: isCircle ? width : height,
//           child: ListView.separated(
//             padding: EdgeInsets.symmetric(horizontal: 12,),
//             shrinkWrap: true,
//             scrollDirection: Axis.horizontal,
//             itemCount: posterImages.length,
//             itemBuilder: (context, index) =>
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     child: Container(
//                       padding: EdgeInsets.symmetric(vertical: 7),
//                       color: colorConstants.mainBlack,
//                       child: Visibility(
//                         visible: haveInfoCard,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Container(
//                               height: 3,
//                               color: Colors.grey,
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Icon(Icons.info_outline, color: colorConstants.mainwhite,),
//                                   Spacer(),
//                                   Icon(Icons.more_vert, color: colorConstants.mainwhite,)
//                                 ],
//                               ),
//                             ),
//
//                           ],
//                         ),
//                       ),
//                     ),
//                     decoration: BoxDecoration(
//                         shape: isCircle?BoxShape.circle:BoxShape.rectangle,
//                         color: Colors.yellow,
//                         image: DecorationImage(
//                             fit: BoxFit.cover,
//                             image: NetworkImage(
//                                 posterImages[index]
//                             ))
//                     ),
//                     height: height,
//                     width: width,
//                   ),
//                 ), separatorBuilder: (context, index) => SizedBox(width: 7,),
//           ),
//         ),
//         SizedBox(height: 22,),
//       ],
//     );
//   }
// }
