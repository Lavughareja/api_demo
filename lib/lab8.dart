import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom.dart';
import 'custom2.dart';

class Lab8 extends StatefulWidget {
  Lab8({Key? key}) : super(key: key);

  @override
  State<Lab8> createState() => _Lab8State();
}

class _Lab8State extends State<Lab8> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text('Brirthday Wish for you'),backgroundColor:Colors.yellowAccent,),
        body: Column(

          children: [
            Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [

                    Image.network('data:image/jpeg;base64,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',fit: BoxFit.cover,),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        controller: name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'enter here',
                          focusColor: Colors.deepOrange,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(

                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: CupertinoColors.activeGreen,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: TextField(
                        controller: password,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'enter here',
                          focusColor: Colors.deepOrange,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: CupertinoColors.destructiveRed,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: CupertinoColors.activeGreen,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: ElevatedButton(
                              onPressed: () {
                                if(name.text==password.text){

                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const Custom();
                                      },
                                    ),
                                  );

                                }

                                // setState(
                                //       () {},
                                // );
                                print(name.text);
                              },
                              child: const Text('singin'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(
                                      () {},
                                );
                              },
                              child: const Text('login'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),


          ],
        ),
      ),
    );
  }
}
