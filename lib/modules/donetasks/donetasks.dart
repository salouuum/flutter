import 'package:flutter/cupertino.dart';

class DoneTasks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Done Tasks',
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
