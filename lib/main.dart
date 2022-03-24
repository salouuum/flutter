import 'package:flutter/material.dart';



import 'map_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Map_Launcher(),
    );
  }


}

