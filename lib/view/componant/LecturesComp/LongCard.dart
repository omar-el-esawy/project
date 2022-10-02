import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Card longCard({
  required duration,
  required title,
  required day,
  required startTime,
  required endTime,
}) {
  return Card(
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Container(
      width: 350,
      height: 130,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Icon(Icons.access_time_filled, color: Colors.black54),
                    Text(
                      duration,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textAndIcons(
                    upText: "Lecture Day",
                    iconData: Icons.calendar_month,
                    dText: day,
                    color: null),
                textAndIcons(
                    upText: "Start Time",
                    iconData: Icons.access_time_filled,
                    dText: startTime,
                    color: Colors.green),
                textAndIcons(
                    upText: "End Time",
                    iconData: Icons.access_time_filled,
                    dText: endTime,
                    color: Colors.redAccent),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Column textAndIcons(
    {required upText,
    required IconData iconData,
    required dText,
    required color}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        upText,
        style: GoogleFonts.poppins(
            color: Colors.black26, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      SizedBox(height: 2),
      Row(
        children: [
          Icon(
            iconData,
            color: color,
          ),
          SizedBox(width: 5),
          Text(dText),
        ],
      )
    ],
  );
}
