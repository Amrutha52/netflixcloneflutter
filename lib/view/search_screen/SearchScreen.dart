import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/dummyDB.dart';
import 'package:netflixclone/utils/constants/color_constants.dart';

class SearchScreen extends StatelessWidget
{
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorConstants.mainBlack,
      body: SafeArea(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text("Top Searches", style: TextStyle(
                  color: colorConstants.mainwhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),),
            ),
            Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 21),
                    itemBuilder: (context, index) =>
                        Container(
                          color: Colors.grey.shade800,
                          child: Row(
                            children: [
                              Container(
                                height: 76,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            DummyDB.searchMoviePostersListd1[index]["imagePath"]!))),
                                width: 146,
                              ),
                              SizedBox(width: 20,),
                              Text(
                                DummyDB.searchMoviePostersListd1[index]["title"]!,
                                style: TextStyle(
                                    color: colorConstants.mainwhite,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14),
                              ),
                              Spacer(),
                              Icon(Icons.play_circle_outline_rounded,
                                color: colorConstants.mainwhite,),
                              SizedBox(width: 5,)
                            ],
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 3,
                    ),
                    itemCount: DummyDB.searchMoviePostersListd1.length
                ))
          ],
        ),
      ),
    );
  }
}
