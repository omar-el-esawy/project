import 'package:flutter/material.dart';

Column CardSetting({required text}) {
  return Column(
    children: [
      ListTile(
        title: Text(text),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
      const Divider(
        height: 15,
        thickness: 0.8,
        indent: 20,
        endIndent: 20,
        color: Colors.black26,
      ),
    ],
  );
}
