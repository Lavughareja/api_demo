import 'dart:html';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class InsertUser extends StatefulWidget {
  InsertUser(this.map);

  Map? map;

  @override
  State<InsertUser> createState() => _InsertUserState();
}

class _InsertUserState extends State<InsertUser> {
  var formkey = GlobalKey<FormState>();

  var nameController = TextEditingController();

  var imgController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.map == null ? '' : widget.map!['FoodName'];
    imgController.text = widget.map == null ? '' : widget.map!['FoodImage'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          children: [
            TextFormField(
              decoration: (InputDecoration(hintText: "Enter name")),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return "Enter valid name";
                }
              },
              controller: nameController,
            ),
            TextFormField(
              decoration: (InputDecoration(hintText: "Enter ImageUrl")),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return "Enter valid imgurl";
                }
              },
              controller: imgController,
            ),
            TextButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    if (widget.map == null) {
                      insertuser()
                          .then((value) => Navigator.of(context).pop(true));
                    } else {
                      updateuser(widget.map!['id'])
                          .then((value) => Navigator.of(context).pop(true));
                    }
                  }
                },
                child: Text("submit")),
          ],
        ),
      ),
    );
  }

  Future<void> updateuser(id) async {
    Map map = {};
    map["FoodName"] = nameController.text;
    map["FoodImage"] = imgController.text;
    var response1 = await http.put(
        Uri.parse('https://6318264dece2736550c1cfb5.mockapi.io/student/$id'),
        body: map);
    print(response1.body);
    print(id);
  }

  Future<void> insertuser() async {
    Map map = {};
    map["FoodName"] = nameController.text;
    map["FoodImage"] = imgController.text;
    var response1 = await http.post(
        Uri.parse('https://6318264dece2736550c1cfb5.mockapi.io/student'),
        body: map);
    print(response1.body);
  }
}
