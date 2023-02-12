import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_first_app/assiment.dart';
import 'package:my_first_app/assiment2.dart';

class Assiment4 extends StatefulWidget {
  const Assiment4 ({Key? key}) : super(key: key);

  @override
  State<Assiment4> createState() => Assiment4taste();
}

class Assiment4taste extends State<Assiment4> {
  double? _rating;
  IconData? _selectedIcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/image/food2.jpg',
                  fit: BoxFit.cover,
                ),
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 135, right: 400, left: 4),
                ),
                Container(
                  child: Text(
                    'Detail',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.only(top: 13, left: 25),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(left: 20, bottom: 50),
              child: Column(
                children: [
                  Expanded(
                    child: Row(children: [
                      Expanded(
                        child: Container(
                          child: Text(
                            'How to make fried \n'
                                'noodies',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                              splashColor: Colors.red,
                              splashRadius: 20,
                            )),
                      ),
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(),
                              child: RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                // allowHalfRating: false,
                                itemCount: 5,
                                itemSize: 15,

                                itemPadding:
                                const EdgeInsets.symmetric(horizontal: 2),
                                itemBuilder: (context, _) => Icon(
                                  _selectedIcon ?? Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  // _rating = ratingvalue;
                                  setState(() {});
                                },
                              ),
                            ),
                            flex: 2,
                          ),
                          Container(
                            child: Expanded(
                              child: Container(
                                margin: EdgeInsets.only(),
                                child: Text('4.0',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 200),
                              child: Icon(
                                Icons.timelapse,
                                color: Colors.grey,
                                size: 15,
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                                  margin: EdgeInsets.only(),
                                  child: Text(
                                    '45 Min',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  )
                                // Icon(Icons.timelapse,color: Colors.grey,),

                              )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: getCustomFunction(),
                  ),
                  Expanded(
                    child: Container(
                      child: Text("Food Info",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 60,left: 8),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        'Fried Noodies are a dish that is loved by most\n'
                            'people Decides beging practical and not too\n'
                            'difficult to make.....',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      margin: EdgeInsets.only(top: 15),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 40,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        height: 50,
                        width: 300,
                        child: InkWell(
                          child: TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return assiment();
                                }));
                              },
                              child: const Text(
                                'Cook Now',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
                // crossAxisAlignment: CrossAxisAlignment.start,
                // children: [
                //   Container(
                //     child:Expanded(
                //       child: Text(
                //         'How to make fried \n'
                //         'noodies',
                //         style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 20,
                //         ),
                //
                //       ),
                //
                //     ),
                //   ),
                // ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getCustomFunction() {
    return Card(
      margin: EdgeInsets.all(0),

      child: Column(

        children: [
          Expanded(

            child: Container(margin: EdgeInsets.only(right: 235),
              child: const Text(
                'Ingredients :',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: iconText(Icons.ac_unit, 'Noodles'),
                  ),
                  Expanded(
                    child: iconText(Icons.accessibility, 'Mustard'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: iconText(Icons.egg, 'Egg'),
                  ),
                  Expanded(
                    child: iconText(Icons.breakfast_dining, 'Bread'),
                  ),
                  Expanded(
                    child: iconText(Icons.food_bank_outlined, 'Lemon'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget iconText(icons, texts) {
    return Container(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              icons,
              color: Colors.grey,
            ),
          ),
          Container(
            child: Text(
              texts,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
