import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({super.key, required this.imageUrl, required this.date, required this.movieName, required this.movieDescription});
  final String imageUrl, date, movieName, movieDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imageUrl,
          height: 195,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.notifications_sharp,
                        size: 24,
                        color: colorConstants.mainwhite,
                      ),
                      SizedBox(height: 7),
                      Text(
                        "Remind Me",
                        style: TextStyle(
                            color: colorConstants.mainwhite.withOpacity(.83)),
                      )
                    ],
                  ),
                  SizedBox(width: 45),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        size: 24,
                        color: colorConstants.mainwhite,
                      ),
                      SizedBox(height: 7),
                      Text(
                        "Share",
                        style: TextStyle(
                            color: colorConstants.mainwhite.withOpacity(.83)),
                      )
                    ],
                  )
                ],
              ),
              Text(
                date,
                style: TextStyle(
                    color: colorConstants.mainwhite.withOpacity(.83),
                    fontSize: 11),
              ),
              SizedBox(height: 12),
              Text(
                movieName,
                style: TextStyle(
                    color: colorConstants.mainwhite,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Text(
                movieDescription,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: colorConstants.mainwhite.withOpacity(.83),
                    fontSize: 11),
              ),
              SizedBox(height: 12),
              Text(
                "Steamy • Soapy • Slow • Burn • Suspenseful • Teen • Mystery",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: colorConstants.mainwhite,
                    fontSize: 11),
              ),
              SizedBox(height: 12),
            ],
          ),
        )
      ],
    );
  }
}