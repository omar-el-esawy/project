import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

RichText orangeDigitalCenter() {
  return RichText(
    text: TextSpan(
      text: 'Orange ',
      style: GoogleFonts.poppins(
          color: Colors.orange, fontSize: 28, fontWeight: FontWeight.w600),
      children: const <TextSpan>[
        TextSpan(text: 'Digital Center', style: TextStyle(color: Colors.black)),
      ],
    ),
  );
}
