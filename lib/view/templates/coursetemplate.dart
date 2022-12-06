import 'package:flutter/material.dart';
import 'package:safal/const.dart';

class CourseTemplate extends StatelessWidget {
  const CourseTemplate({
    Key? key,
    required this.Courses,
    required this.index,
  }) : super(key: key);

  final List<String> Courses;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(2, 2)),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(right: 15, left: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
            ),
            child: Image.network(
              'https://img-c.udemycdn.com/course/240x135/394676_ce3d_5.jpg',
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'images/profile.png',
                      width: 25,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      '   Hemant karki',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
               
                SizedBox(
                  height: 8,
                ),
                Text(
                  Courses[index],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time_sharp,
                      size: 16,
                      color: Colors.grey,
                    ),
                    Text(
                      ' 1 hour',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                    ),
                    Spacer(),
                    Text(
                      '4/5',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: secondarycolor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// seeeeeeeeee more

class SeeMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Text(
            "See More",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: Color(0xff00005c),
            ),
          ),
          Icon(
            color: Color(0xff00005c),
            Icons.keyboard_double_arrow_right,
            size: 18,
          ),
        ],
      ),
    );
  }
}

//

class CourseTitle extends StatelessWidget {
  final String text;
  CourseTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: secondarycolor,
        fontWeight: FontWeight.w600,
        fontSize: 15,
      ),
    );
  }
}

class CataegoryCourse extends StatelessWidget {
  final String categoryTitle;
  final IconData categoryIcon;
  CataegoryCourse(this.categoryTitle, this.categoryIcon);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 7,
        right: 15,
        top: 10,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (var i = 0; i < 15; i++)
              Container(
                margin: const EdgeInsets.only(left: 15),
                height: 35,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      categoryIcon,
                      color: primaryColor,
                    ),
                    Text(
                      categoryTitle,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
