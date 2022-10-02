import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orangeeduapp/view/componant/Box.dart';
import 'package:orangeeduapp/view/pages/Event.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Column(
          children: [
            SizedBox(height: 70),
            Text("News",
                style: GoogleFonts.poppins(
                    fontSize: 28, fontWeight: FontWeight.w600)),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => Event()),
                  ),
                );
              },
              child: Box(
                second: Colors.black12,
                col: Colors.black12,
                ODCs: true,
                isContainerhere: true,
                isInFotter: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
