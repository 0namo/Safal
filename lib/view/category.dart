import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Design',
              style: TextStyle(color: secondarycolor),
            ),
            Text('4'),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.only(top: 0, left: 10, bottom: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 0.5,
                    color: Colors.grey,
                  ),
                ],
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: secondarycolor,
                    ),
                    child: Image.asset(
                      // imageName,
                      'images/logo.png',

                      fit: BoxFit.cover,
                      width: 80,
                      height: 100,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // textUpName,
                        '2022 complete 3D modeling From zero to hero in modeling',
                        // style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            size: 18,
                            color: secondarycolor,
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            size: 18,
                            color: secondarycolor,
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            size: 18,
                            color: secondarycolor,
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            size: 18,
                            color: secondarycolor,
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            size: 18,
                            color: secondarycolor,
                          ),
                          Text('  (3)'),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'images/profile.png',
                            width: 15,
                            height: 15,
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
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_sharp,
                            size: 16,
                            color: Colors.grey,
                          ),
                          Text(
                            ' 1 hour',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
