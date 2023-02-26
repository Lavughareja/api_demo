import 'dart:convert';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/assiment3.dart';
import 'package:http/http.dart' as http;
import 'package:my_first_app/insert_user.dart';
//import 'package:my_first_app/search%20-%20Copy.dart';
import 'package:my_first_app/search.dart';

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
                            margin: EdgeInsets.only(left: 10),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Drawer(
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      children: [
                                        UserAccountsDrawerHeader(
                                          accountName: Text('Lav Ughareja'),
                                          accountEmail:
                                              Text('lavughareja@gmail.com'),
                                          currentAccountPicture: CircleAvatar(
                                            child: ClipOval(
                                              child: Image.asset(
                                                'assets/image/ic2.png',
                                                width: 90,
                                                height: 90,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.amber,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/image/black.jpg'),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.favorite),
                                          title: Text('Favorite'),
                                          onTap: () => null,
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.people),
                                          title: Text('Friends'),
                                          onTap: () => null,
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.share),
                                          title: Text('Share'),
                                          onTap: () => null,
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.notification_add),
                                          title: Text('Request'),
                                          onTap: () => null,
                                        ),
                                        Divider(),
                                        ListTile(
                                          leading: Icon(Icons.settings),
                                          title: Text('setting'),
                                          onTap: () => null,
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.description),
                                          title: Text('Policies'),
                                          onTap: () => null,
                                        ),
                                        Divider(),
                                        ListTile(
                                          leading:
                                              Icon(Icons.exit_to_app_sharp),
                                          title: Text('Exit'),
                                          onTap: () => null,
                                        ),
                                      ],
                                    ),
                                    width: 200,
                                  );
                                }));
                              },
                              child: Icon(Icons.format_align_center_outlined),
                            ),
                          )),
                          Expanded(
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
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                              return SearchBarScreen();
                            },));
                          },
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
            child: Column(children: [
              Container(
                margin: EdgeInsets.all(20),
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
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                      //alignment: Alignment.center,
                      height: 230,
                      width: 350,

                      child: FutureBuilder<http.Response>(
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            List<dynamic> datas =
                            jsonDecode(snapshot.data!.body.toString());
                            datas.reversed;
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:
                              jsonDecode(snapshot.data!.body.toString())
                                  .length,
                              itemBuilder: (context, index) {
                                {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) {
                                          return Assiment3(

                                              jsonDecode(snapshot.data!.body
                                                  .toString())[index]
                                              ['FoodImage'],
                                              jsonDecode(snapshot.data!.body
                                                  .toString())[index]
                                              ['FoodName'],
                                              jsonDecode(snapshot.data!.body
                                                  .toString())[index]
                                              ['FoodDetails'],
                                              jsonDecode(snapshot.data!.body
                                                  .toString())[index]
                                              ['Time']
                                                  .toString());
                                        },
                                      ));
                                    },
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Stack(
                                            children: [
                                              Container(
                                                // height: 200,
                                                width: 260,
                                                height: 210,

                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10),
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                          jsonDecode(snapshot
                                                              .data!.body
                                                              .toString())[
                                                          index]['FoodImage']),
                                                      fit: BoxFit.cover,
                                                    )),
                                                //child: Image.network(jsonDecode(snapshot.data!.body.toString())[index]['StudentImage']),
                                              ),
                                              Container(
                                                  margin:
                                                  EdgeInsets.only(top: 145),
                                                  color: Colors.white,
                                                  height: 68,
                                                  width: 260,
                                                  child: Column(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          child: Text(
                                                            'How to make fried '
                                                                '${jsonDecode(snapshot.data!.body.toString())[index]['FoodName']}',
                                                            style: TextStyle(
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold,
                                                              fontSize: 18,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            bottom: 10),
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(),
                                                              child: RatingBar
                                                                  .builder(
                                                                initialRating:
                                                                4,
                                                                minRating: 1,
                                                                direction: Axis
                                                                    .horizontal,
                                                                // allowHalfRating: false,
                                                                itemCount: 5,
                                                                itemSize: 15,

                                                                itemPadding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                    2),
                                                                itemBuilder:
                                                                    (context,
                                                                    _) =>
                                                                    Icon(
                                                                      _selectedIcon ??
                                                                          Icons
                                                                              .star,
                                                                      color: Colors
                                                                          .amber,
                                                                    ),
                                                                onRatingUpdate:
                                                                    (rating) {
                                                                  // _rating = ratingvalue;
                                                                  setState(
                                                                          () {});
                                                                },
                                                              ),
                                                            ),
                                                            Container(
                                                              child: Expanded(
                                                                  child: Text(
                                                                    '4.2',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                        12),
                                                                  )),
                                                            ),
                                                            Expanded(
                                                              child: Icon(
                                                                Icons
                                                                    .watch_later_outlined,
                                                                size: 15,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                                  jsonDecode(snapshot
                                                                      .data!
                                                                      .body
                                                                      .toString())[
                                                                  index]['Time']
                                                                      .toString(),
                                                                  style: TextStyle(
                                                                      fontSize: 12),
                                                                ))
                                                          ],
                                                        ),
                                                      )
                                                      //ahi star avse
                                                    ],
                                                  )),
                                              Container(
                                                child: IconButton(
                                                  onPressed: () {
                                                    Navigator.of(context)
                                                        .push(MaterialPageRoute(
                                                      builder: (context) {
                                                        return InsertUser(
                                                            jsonDecode(snapshot
                                                                .data!.body
                                                                .toString())[
                                                            index]);
                                                      },
                                                    )).then((value) {
                                                      if (value == true) {
                                                        setState(() {});
                                                      }
                                                    });
                                                  },
                                                  icon: Icon(
                                                    Icons.edit,
                                                    color: Colors.orange,
                                                    size: 22,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 30,top: 7),

                                                child: TextButton(
                                                    onPressed: () {
                                                      showAlert(jsonDecode(
                                                          snapshot
                                                              .data!.body
                                                              .toString())[
                                                      index]['id']);
                                                    },
                                                    child: Icon(
                                                      Icons.delete,
                                                      size: 25,
                                                      color: Colors.red,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              },
                            );
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                        future: getFood(),
                      ),
                    )
                  ],
                ),
              ),
              //Expanded(child: Container(),flex: 7,),
              Container(
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
              ),
              Center(
                child: Card(
                    child: Container(
                  margin: EdgeInsets.only(top: 60),
                  color: Colors.white70,
                  child: Row(children: [
                    Image.asset(
                      'assets/image/meggi.jpg',
                      height: 50,
                      width: 50,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              'How to make seblak',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Container(
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
                            )
                          ],
                        ),
                      ),
                      flex: 2,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                    )
                  ]),
                )),
              ),
            ]),
            flex: 2,
          ),
          BottomNavigationBarTheme(
            data: BottomNavigationBarThemeData(backgroundColor: Colors.white),
            child: Row(
              children: [
                Expanded(child: Icon(Icons.home)),
                Expanded(child: Icon(Icons.favorite_border_outlined)),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 25),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return InsertUser(null);
                        })).then((value) {
                          if(value==true){
                            setState(() {

                            });
                          }
                        }, );
                      },
                      icon: Icon(
                        color: Color(0xFFEF5350),
                        Icons.add,
                        size: 25,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return Assiment3('', '', '', '');
                          },
                        ));
                      },
                      child: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  void showAlert(id) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Alert!'),
          content: Text('Are you sure want to delete?'),
          actions: [
            TextButton(
                onPressed: () async {
                  http.Response res = await deleteDish(id);
                  if (res.statusCode == 200) {
                    Navigator.of(context).pop();
                    setState(() {});
                  }
                },
                child: Text('yes')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('No'))
          ],
        );
      },
    );
  }


  Future<http.Response> deleteDish(id) async {
    var response = await http.delete(
        Uri.parse('https://6318264dece2736550c1cfb5.mockapi.io/student/$id'));
    return response;
  }
  Future<http.Response> getFood() async {
    var responce = await http
        .get(Uri.parse("https://6318264dece2736550c1cfb5.mockapi.io/student"));
    //print(responce.body.toString());
    return responce;
  }
}
