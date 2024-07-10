import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/utils/constants/color_constants.dart';

class SearchScreen extends StatelessWidget
{
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorConstants.mainBlack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              prefixIcon: Icon(Icons.search, color: Colors.grey,),
              suffixIcon: Icon(Icons.mic, color: Colors.grey,),
              hintText: "Search for a show, movie, genre, etc.",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey.shade800,
            ),
          ),
          Text("Top Searched", style: TextStyle(color: colorConstants.mainwhite),),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                    leading: Container(
                      color: Colors.red,
                      width: 146,
                    ),
                    title: Text(
                      "Title",
                      style: TextStyle(color: colorConstants.mainwhite),
                    ),
                    trailing: Icon(Icons.play_circle_outline_rounded),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  itemCount: 10))
        ],
      ),
    );
  }
}
