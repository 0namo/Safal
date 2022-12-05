import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const.dart';
import '../templates/coursetemplate.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Courses = [
      // 'Science',
      'How to write an eFfeCtive research paper: international expansion a blue print for success',
      'The Python: come and study with us',
      'adam smith: the father of economics',
      'The Python: come and study with us',
      'adam smith: the father of economics',
      'The Python: come and study with us',
      'adam smith: the father of economics',
      'The Python: come and study with us',
      'adam smith: the father of economics',
    ];
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                color: Colors.white,
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: primaryColor,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 18, top: 20, right: 5),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Search Course",
                                contentPadding: EdgeInsets.only(left: 30),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: secondarycolor,
                                  size: 30,
                                  // color: primaryColor,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: GestureDetector(
                                onTap: (() {}),
                                child: Icon(
                                  Icons.tune,
                                  color: secondarycolor,
                                  size: 35,
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20),
                      child: CourseTitle('Categories'),
                    ),
                    CataegoryCourse('music', Icons.music_note_rounded),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15, right: 15),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    CourseTitle('Feature Courses'),
                    Spacer(),
                    SeeMore(),
                  ],
                ),
              ),
              SizedBox(
                height: 270,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 15),
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 18),
                    itemExtent: 170,
                    scrollDirection: Axis.horizontal,
                    itemCount: Courses.length,
                    itemBuilder: (context, index) => CourseTemplate(
                      Courses: Courses,
                      index: index,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15, right: 15),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    CourseTitle('Top Courses'),
                    Spacer(),
                    SeeMore(),
                  ],
                ),
              ),
              SizedBox(
                height: 270,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 15),
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 15),
                    itemExtent: 175,
                    scrollDirection: Axis.horizontal,
                    itemCount: Courses.length,
                    itemBuilder: (context, index) => CourseTemplate(
                      Courses: Courses,
                      index: index,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15, right: 15),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    CourseTitle('Latest Courses'),
                    Spacer(),
                    SeeMore(),
                  ],
                ),
              ),
              SizedBox(
                height: 270,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 15),
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 18),
                    itemExtent: 177,
                    scrollDirection: Axis.horizontal,
                    itemCount: Courses.length,
                    itemBuilder: (context, index) => CourseTemplate(
                      Courses: Courses,
                      index: index,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15, right: 15),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    CourseTitle('Latest'),
                    Spacer(),
                    SeeMore(),
                  ],
                ),
              ),
              SizedBox(
                height: 270,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 15),
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 18),
                    itemExtent: 179,
                    scrollDirection: Axis.horizontal,
                    itemCount: Courses.length,
                    itemBuilder: (context, index) => CourseTemplate(
                      Courses: Courses,
                      index: index,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15, right: 15),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    CourseTitle('Popular Course'),
                    Spacer(),
                    SeeMore(),
                  ],
                ),
              ),
              SizedBox(
                height: 270,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 15),
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 18),
                    itemExtent: 200,
                    scrollDirection: Axis.horizontal,
                    itemCount: Courses.length,
                    itemBuilder: (context, index) => CourseTemplate(
                      Courses: Courses,
                      index: index,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15, right: 15),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    CourseTitle('New Release Course'),
                    Spacer(),
                    SeeMore(),
                  ],
                ),
              ),
              SizedBox(
                height: 270,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 15),
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 18),
                    itemExtent: 210,
                    scrollDirection: Axis.horizontal,
                    itemCount: Courses.length,
                    itemBuilder: (context, index) => CourseTemplate(
                      Courses: Courses,
                      index: index,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
