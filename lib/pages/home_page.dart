// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_demo1/models/shopkart.dart';

import '../utilis/drawer.dart';
import '../utilis/item_widget.dart';

class home extends StatelessWidget {
  final String name = "naman";
  final dummy_list = List.generate(50, (index) => shopkartmodel.item[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "YOURKART",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView.builder(
        itemCount: dummy_list.length,
        itemBuilder: (BuildContext context, int index) {
          return Itemwidget(item: dummy_list[index]);
        },
      ),
      drawer: Mydrawer(),
    );
  }
}
