import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GMaps_Screen extends StatefulWidget {
  @override
  State<GMaps_Screen> createState() => _GMaps_ScreenState();
}

class _GMaps_ScreenState extends State<GMaps_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('maps',),
      ),
    );
  }
}
