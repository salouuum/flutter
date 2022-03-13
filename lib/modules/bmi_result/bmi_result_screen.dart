
import 'package:flutter/material.dart';

class BMI_Result extends StatelessWidget {
  final double result ;
  final bool isMale ;
  final int weight,age;
  final double height;
  BMI_Result({
    required this.height,
    required this.weight,
    required this.age,
    required this.isMale,
    required this.result
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.0,
        backgroundColor: Colors.black,
        title: Container(
          width: double.infinity,
          child: Row(
              children:[
                Text(
                  'RESULT',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ]),
        ),
      ),
      body: Container(
        color: Colors.black87,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'male':'female'}',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Height : ${height.round()} ',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Age : ${age}',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Weight : ${weight}',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Result : ${result.round()}',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
