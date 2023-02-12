import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first_app/assiment2.dart';
import 'package:my_first_app/assiment3.dart';
import 'package:my_first_app/assiment4.dart';
import 'package:my_first_app/assiment5.dart';
import 'package:my_first_app/custom3.dart';

import 'Brithday.dart';
import 'Lab_8.dart';
import 'assiment.dart';
import 'custom2.dart';
import 'lab8.dart';
import 'matrimanoy.dart';

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
