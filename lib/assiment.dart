import 'package:flutter/material.dart';

import 'assiment2.dart';


class assiment extends StatefulWidget {
  const assiment({Key? key}) : super(key: key);

  @override
  State<assiment> createState() => _assimentState();
}

class _assimentState extends State<assiment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Image.asset(
            'assets/image/photo3.jpg',
            fit: BoxFit.fill,
          )),
          Expanded(
              child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/image/photo4.jpg',
                fit: BoxFit.fill,
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(40),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: const Text(
                          'Food App',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 25),
                        child: const Text(
                          'This application serves to find popular \n'
                          'cultinary delights that serve a variety of \n'
                          'foods',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 70),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                          height: 50,
                          width: 200,
                          child: InkWell(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return Assiment2();
                                  }));
                                },
                                child: const Text(
                                  'Get Started',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
