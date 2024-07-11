import 'package:flutter/cupertino.dart';

import '../../../dummyDB.dart';
import '../../../utils/constants/color_constants.dart';

class NewArrivalCard extends StatelessWidget
{
  const NewArrivalCard({
    super.key, required this.imageUrl, required this.newArrival, required this.date, required this.movieName,
  });

  final String imageUrl, newArrival, date, movieName;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      color: colorConstants.grey,
      child: Row(
        children: [
          // ClipRRect is used for giving border radius for an image
          ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: Image.network(
                height: 55,
                width: 113,
                fit: BoxFit.cover,
                imageUrl),
          ),
          SizedBox(width: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(newArrival,
                style: TextStyle(color: colorConstants.mainwhite, fontSize: 14),
              ),
              Text(movieName,
                style: TextStyle(
                    color: colorConstants.mainwhite.withOpacity(.83),
                    fontSize: 14
                ),
              ),
              Text(date,
                style: TextStyle(
                    color: colorConstants.mainwhite.withOpacity(.47),
                    fontSize: 10
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
