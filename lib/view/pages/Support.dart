import 'package:flutter/material.dart';
import '../componant/TextField.dart';
import 'package:google_fonts/google_fonts.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Support",
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.orange,
            )),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SizedBox(height: 30),
            textField(hintDate: "Name", isIcon: true, icon: Icons.person),
            SizedBox(height: 30),
            textField(hintDate: "E-mail", isIcon: true, icon: Icons.mail),
            SizedBox(height: 30),
            textField(hintDate: "what's making you unhappy?", isIcon: false),
            SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
