
import 'package:flutter/material.dart';

import 'layout/to_do_home.dart';
import 'modules/login/log.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDo_Home(),
    );
  }

}
