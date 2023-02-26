import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first_app/assiment.dart';
import 'package:my_first_app/assiment2.dart';
import 'package:my_first_app/assiment3.dart';
import 'package:my_first_app/page2.dart';


void main() {

  runApp(Pogram_1());
}

class Pogram_1 extends StatelessWidget {
  Pogram_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: assiment(),
    );
  }
}
