
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bmi_result/bmi_result_screen.dart';

class BMI extends StatefulWidget {
  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  bool isMale = true ;
  double height = 120.0;
  int weight = 60 ;
  int age = 18 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        toolbarHeight: 70.0,
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale? Colors.lightBlueAccent : Colors.grey[600],
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: MaterialButton(
                          onPressed: (){
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 80.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color:isMale? Colors.grey[600]: Colors.lightBlueAccent ,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: MaterialButton(
                          onPressed: (){
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 80.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[300],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'CM',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          activeColor: Colors.black87,
                          inactiveColor: Colors.white,
                          value: height,
                          max: 250.0,
                          min: 100.0,
                          onChanged:(value){
                            setState(() {
                              height = value ;
                            });
                          }
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.grey[300],
                              ),
                            ),
                            Text(
                              '${age}',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.grey[300],
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.black,
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      if(age>1){
                                        age--;
                                      }
                                    });
                                  },
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.grey[300],
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.grey[300],
                              ),
                            ),
                            Text(
                              '${weight}',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.grey[300],
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.black,
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      if(weight>5){
                                        weight--;
                                      }
                                    });
                                  },
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.grey[300],
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(20.0),
                  topStart: Radius.circular(20.0),
                ),
              ),
              height: 70.0,
              width: double.infinity,
              child: MaterialButton(
                onPressed:(){
                  double result = weight/pow((height/100), 2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMI_Result(
                          isMale: isMale,
                          height: height,
                          weight: weight,
                          result: result,
                          age: age,
                        ),
                      )
                  );
                },
                child: Text(
                  'Calculate',
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
