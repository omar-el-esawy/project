import 'package:flutter/material.dart';

TextFormField textField({
  required isIcon,
  required hintDate,
  IconData? icon,
}) {
  return TextFormField(
    controller: TextEditingController(),
    decoration: InputDecoration(
      border: myinputborder(),
      hintText: hintDate,
      prefixIcon: Icon((isIcon) ? icon : null),
    ),
  );
}

OutlineInputBorder myinputborder() {
  return OutlineInputBorder(
    borderRadius: new BorderRadius.circular(10.0),
    borderSide: new BorderSide(
      color: Colors.black26,
    ),
  );
}
