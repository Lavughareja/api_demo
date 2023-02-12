import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/assiment3.dart';
import 'package:my_first_app/my_drawer_header.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_first_app/assiment3.dart';
import 'package:my_first_app/assiment4.dart';
import 'package:my_first_app/assiment5.dart';

int current = 0;

class Assiment2 extends StatefulWidget {
  Assiment2({Key? key}) : super(key: key);

  @override
  State<Assiment2> createState() => _Assiment2State();
}

class _Assiment2State extends State<Assiment2> {
  double? _rating;
  IconData? _selectedIcon;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
                  color: Colors.amber,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            alignment: Alignment.topLeft,
                            color: Colors.amber,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return NavBar();
                                }));
                              },
                              child: Icon(Icons.format_align_center_outlined),
                            ),
                            margin: EdgeInsets.only(left: 10),
                          )),
                          Expanded(
                              child: Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10, top: 10),
                                    alignment: Alignment.topRight,
                                    color: Colors.amber,
                                    child: Image.asset(
                                      'assets/image/ic2.png',
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                        ],
                      ),
                      Expanded(
                        child: Container(
                            //height: 200,
                            width: double.infinity,
                            color: Colors.amber,
                            child: Container(
                              margin: EdgeInsets.only(top: 20, left: 20),
                              child: Text(
                                'What will you make\n'
                                'today?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                      Expanded(
                          child: Container(
                        //padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search food or recipies",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Icon(
                              Icons.search_outlined,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                        ),
                      )),
                    ],
                  ))),
          Expanded(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: (Text(
                              "Recommended",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                            // margin: EdgeInsets.only( left: 15, bottom: 195),
                            alignment: Alignment.centerLeft,
                          ),
                          flex: 2),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text("View all",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        // padding: EdgeInsets.only(left: 50),
                        // margin: EdgeInsets.only(bottom: 395
                        // ),
                        alignment: Alignment.centerRight,
                      ))
                    ],
                  ),
                )),
                Expanded(
                  child: Container(
                    //color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                          //alignment: Alignment.center,
                          height: 296,
                          // margin: EdgeInsets.only(bottom: 250),

                          width: double.infinity,
                          child: CarouselSlider(
                            items: [
                              InkWell(
                                child: Stack(
                                  children: [
                                    Container(
                                      // height: 600,
                                      width: 260,
                                      //margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                                      // margin: EdgeInsets.only(top: 15),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                'assets/image/foods.jpg'
                                                //'assets/images/ss2.jpg',
                                                ),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    // Container(
                                    //   color: Colors.white,
                                    //     margin: EdgeInsets.only(top: 240),
                                    //  ),
                                    Container(
                                        margin: EdgeInsets.only(top: 145),
                                        color: Colors.white,
                                        height: 60,
                                        width: 260,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child: Text(
                                                  'How to make fried'
                                                  'noodies',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Expanded(child: RatingBar.builder(
                                            //   initialRating: 3,
                                            //   minRating: 1,
                                            //   direction: Axis.horizontal,
                                            //   allowHalfRating: true,
                                            //   itemCount: 5,
                                            //   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                            //   itemBuilder: (context, _) => Icon(
                                            //     Icons.star,
                                            //     color: Colors.amber,
                                            //   ),
                                            //   onRatingUpdate: (rating) {
                                            //     print(rating);
                                            //   },
                                            // )),
                                          ],
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return Assiment3();
                                  }));
                                },
                              ),
                              InkWell(
                                child: Stack(
                                  children: [
                                    Container(
                                      // height: 600,
                                      width: 260,
                                      // margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                                      // margin: EdgeInsets.only(top: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(2),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              'assets/image/food4.jpg'
                                              // 'assets/images/images.jpg'
                                              //   'assets/images/dish4.jpg'
                                              ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 145),
                                        color: Colors.white,
                                        height: 60,
                                        width: 260,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child: Text(
                                                  'How to make fried '
                                                  'noodies',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Expanded(child: RatingBar.builder(
                                            //   initialRating: 3,
                                            //   minRating: 1,
                                            //   direction: Axis.horizontal,
                                            //   allowHalfRating: true,
                                            //   itemCount: 5,
                                            //   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                            //   itemBuilder: (context, _) => Icon(
                                            //     Icons.star,
                                            //     color: Colors.amber,
                                            //   ),
                                            //   onRatingUpdate: (rating) {
                                            //     print(rating);
                                            //   },
                                            // )),
                                          ],
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return Assiment4();
                                  }));
                                },
                              ),
                              InkWell(
                                child: Stack(
                                  children: [
                                    Container(
                                      // height: 600,
                                      width: 260,
                                      // margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                                      // margin: EdgeInsets.only(top: 15),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                'assets/image/food2.jpg'
                                                //   'assets/images/ss1.jpg'
                                                ),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 145),
                                        color: Colors.white,
                                        height: 60,
                                        width: 260,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child: Text(
                                                  'How to make fried '
                                                  'noodies',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Expanded(child: RatingBar.builder(
                                            //   initialRating: 3,
                                            //   minRating: 1,
                                            //   direction: Axis.horizontal,
                                            //   allowHalfRating: true,
                                            //   itemCount: 5,
                                            //   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                            //   itemBuilder: (context, _) => Icon(
                                            //     Icons.star,
                                            //     color: Colors.amber,
                                            //   ),
                                            //   onRatingUpdate: (rating) {
                                            //     print(rating);
                                            //   },
                                            // )),
                                          ],
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return Assiment5();
                                  }));
                                },
                              ),
                            ],
                            options: CarouselOptions(
                                autoPlay: true,

                                //spectRatio: 1,
                                onPageChanged: (index, other) {
                                  setState(() {
                                    print(other.toString());
                                    current = index;
                                  });
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                  flex: 6,
                ),
                //Expanded(child: Container(),flex: 7,),
                Expanded(
                    child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: (Text(
                              "Popular",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                            // margin: EdgeInsets.only( left: 15, bottom: 195),
                            alignment: Alignment.centerLeft,
                          ),
                          flex: 2),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text("View all",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        // padding: EdgeInsets.only(left: 50),
                        // margin: EdgeInsets.only(bottom: 395
                        // ),
                        alignment: Alignment.centerRight,
                      ))
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  color: Colors.white70,
                  child: Row(
                    children: [
                      Expanded(
                          child: Image.asset(
                        'assets/image/meggi.jpg',
                        height: 50,
                        width: 50,
                      )),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                  child: Text(
                                'How to make seblak',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 17,
                                      )),
                                      Container(
                                        child: Expanded(
                                            child: Text(
                                          '4.2',
                                          style: TextStyle(fontSize: 12),
                                        )),
                                      ),
                                      Expanded(
                                        child: Icon(
                                          Icons.watch_later_outlined,
                                          size: 15,
                                        ),
                                      ),
                                      Expanded(
                                          child: Text(
                                        '45 min',
                                        style: TextStyle(fontSize: 12),
                                      ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        flex: 2,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  child: Row(
                    children: [
                      Expanded(child: Icon(Icons.home)),
                      Expanded(child: Icon(Icons.favorite_border_outlined)),
                      Expanded(child: Icon(Icons.file_copy)),
                      Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Assiment3();
                              },
                            ));
                          },
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      )
                    ],
                  ),
                )),
              ],
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }
}
