import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity ,
  Color background = Colors.blue,
  required Function() function ,
  required String text ,
  bool upper = true ,
}) => Container(
  width: width,
  color: background,
  child: MaterialButton(
    onPressed: function,
    child: Text(
      upper?text.toUpperCase():text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);

Widget defaultFormField({
  required TextEditingController controller,
  Function(String)? submit ,
  Function(String)? change,
  required String? Function(String?) validate ,
  required String label,
  required Icon icon ,
  required TextInputType type,
  Widget? sufficon ,
  bool obsecure=false,
})=> TextFormField(
  controller: controller,
  keyboardType: type,
  onFieldSubmitted: submit,
  onChanged: change,
  validator: validate,
  obscureText: obsecure,
  decoration: InputDecoration(
    labelText: label,
    prefixIcon: icon,
    suffixIcon: sufficon,
    border: OutlineInputBorder(),
  ),
);