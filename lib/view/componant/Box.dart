import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orangeeduapp/view/componant/OrangeDigital.dart';

Container Box(
    {required isContainerhere,
    required isInFotter,
    required ODCs,
    required col,
    required second}) {
  return Container(
    width: 500,
    height: 280,
    decoration: BoxDecoration(
      // color: col,
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          second,
          col,
          second,
        ],
      ),
      // Colors.black12,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (ODCs)
                Text("ODCs",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600)),
              if (isContainerhere)
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 2,
                          height: 25,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.copy_sharp,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
            ],
          ),
          SizedBox(height: 75),
          Hero(tag: "orange", child: orangeDigitalCenter()),
          SizedBox(height: 75),
          if (isInFotter)
            Text("ODC Supports All Universties",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300)),
        ],
      ),
    ),
  );
}
