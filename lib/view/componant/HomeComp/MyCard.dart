import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

Padding myCard({required String icon, required String dataText}) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        width: 150,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              minRadius: 30,
              backgroundColor: Colors.black12,
              child: SvgPicture.asset(
                icon,
                width: 45,
                color: (dataText == "Sectoins") ? Colors.orange : null,
              ),
            ),
            Text(
              dataText,
              style: GoogleFonts.poppins(
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    ),
  );
}
