import 'package:flutter/material.dart';
import 'package:weight_project/Screens/weightList.dart';

class WeightFoam extends StatefulWidget {
  @override
  _WeightFoamState createState() => _WeightFoamState();
}

class _WeightFoamState extends State<WeightFoam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foam'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 100.0),
        padding: EdgeInsets.all(40),
        child: ListView(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Name',
                hintStyle: TextStyle(color: Colors.black54),
                icon: Icon(Icons.arrow_back_ios_new),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Gender',
                hintStyle: TextStyle(color: Colors.black54),
                icon: Icon(Icons.arrow_back_ios_new),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Weight',
                hintStyle: TextStyle(color: Colors.black54),
                icon: Icon(Icons.arrow_back_ios_new),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 70),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeightList(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 150,
                ),
                width: double.infinity,
                color: Colors.blue,
                height: 60,
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
