import 'dart:js';

import 'package:flutter/material.dart';

class WeightList extends StatefulWidget {
  @override
  _WeightListState createState() => _WeightListState();
}

class _WeightListState extends State<WeightList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight List'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, index) {
                  return ListTile();
                }),
          ],
        ),
      ),
    );
  }
}
