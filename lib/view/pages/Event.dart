import 'package:flutter/material.dart';
import 'package:orangeeduapp/view/componant/OrangeDigital.dart';
import 'package:google_fonts/google_fonts.dart';

class Event extends StatelessWidget {
  const Event({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: double.infinity,
                height: 340,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios_new_sharp,
                                color: Colors.orange)),
                      ),
                      SizedBox(height: 75),
                      Hero(
                        tag: 'orange',
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: orangeDigitalCenter(),
                        ),
                      ),
                      // SizedBox(height: 75),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ODCs", style: GoogleFonts.poppins(
                      color: Colors.black, fontSize: 30, fontWeight: FontWeight.w600),),
                  Text("2022-07-06",style: TextStyle(color: Colors.orange),),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                      child: Text("ODC Supports All Universties",style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
