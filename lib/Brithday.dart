import 'package:flutter/material.dart';

class Brithday extends StatelessWidget {
  const Brithday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Column(
          children: [Expanded(child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network('https://trbahadurpur.com/wp-content/uploads/2022/01/1-2-600x424.jpg',fit: BoxFit.fill,),
              Column(
                children: [Expanded(child: Container(
                  child: Image.network('https://m.economictimes.com/thumb/msid-69079152,width-1200,height-900,resizemode-4,imgsize-151792/mahendra-singh-dhoni.jpg'),

                ),),],
              )
            ],

          ),)],
        ),
      ),

    );
  }
}
