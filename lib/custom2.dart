import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custom extends StatelessWidget {
  const Custom ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Expanded(child:Column(
              children: [
                Expanded(child: Column(
                  children: [
                    Expanded(child: Row(
                      children: [
                        Expanded(child: Container(color:Colors.lightBlue),flex: 2,),
                        Expanded(child: Column(
                          children: [
                            Expanded(child:Column(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: Container(color:Colors.pink)),
                                    Expanded(child: Container(color:Colors.brown)),
                                  ],
                                )),
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: Container(color:Colors.orange)),
                                    Expanded(child: Container(color:Colors.black)),
                                  ],
                                )),
                              ],
                            )),
                            Expanded(child: Container(color:Colors.green)),
                          ],
                        )),
                      ],
                    ),),
                    Expanded(child: Row(
                      children: [
                        Expanded(child: Container(color:Colors.blueGrey)),
                        Expanded(child: Row(
                          children: [
                            Expanded(child: Column(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: Container(color:Colors.pink)),
                                    Expanded(child: Container(color:Colors.brown)),
                                  ],
                                )),
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: Container(color:Colors.white)),
                                    Expanded(child: Container(color:Colors.black)),
                                  ],
                                )),
                              ],
                            )),
                          ],
                        )),
                        Expanded(child: Container(color:Colors.blueAccent)),
                      ],

                    ),),
                    Expanded(child: Row(
                      children: [
                        Expanded(child: Container(color:Colors.limeAccent)),
                        Expanded(child: Container(color:Colors.green)),
                        Expanded(child: Container(color:Colors.pink)),
                      ],
                    ),),
                    Expanded(child: Row(
                      children: [
                        Expanded(child: Column(
                          children: [
                            Expanded(child: Column(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: Container(color:Colors.black)),
                                    Expanded(child: Container(color:Colors.deepPurpleAccent)),
                                  ],
                                )),
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: Container(color:Colors.purple)),
                                    Expanded(child: Container(color:Colors.orangeAccent)),
                                  ],
                                )),
                              ],
                            )),
                            Expanded(child: Container(color:Colors.yellowAccent)),
                          ],
                        )),
                        Expanded(child: Container(color:Colors.white)),
                        Expanded(child: Container(color:Colors.red)),
                        Expanded(child: Column(
                          children: [
                            Expanded(child: Row(
                              children: [
                                Expanded(child: Container(color:Colors.lightGreenAccent)),
                                Expanded(child: Column(
                                  children: [
                                    Expanded(child: Row(
                                      children: [
                                        Expanded(child: Container(color:Colors.red)),
                                        Expanded(child: Container(color:Colors.black38)),
                                      ],
                                    )),
                                    Expanded(child: Row(
                                      children: [
                                        Expanded(child: Container(color:Colors.deepPurpleAccent)),
                                        Expanded(child: Container(color:Colors.orange)),
                                      ],
                                    )),
                                  ],
                                )),
                              ],
                            ),flex:1),
                            Expanded(child: Row(
                              children: [
                                Expanded(child: Container(color:Colors.cyan)),
                                Expanded(child: Container(color:Colors.indigo)),
                              ],
                            ),flex:2),
                          ],
                        )),
                      ],
                    ),),

                  ],
                )),


              ],
            )),


          ],

        ),
      )
      ,
    );
  }
}
