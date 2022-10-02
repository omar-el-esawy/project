import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orangeeduapp/view/pages/FAQ.dart';
import 'package:orangeeduapp/view/pages/OurPartners.dart';
import 'package:orangeeduapp/view/pages/Support.dart';
import 'package:orangeeduapp/view/pages/Term%20&%20Conditions.dart';

import '../componant/SettingsComp/Cardsettings.dart';
import 'loginPage.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              Text("Settings",
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w600)),
              SizedBox(height: 40),
              GestureDetector(
                child: CardSetting(text: "FAQ"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FAQ(),
                      ));
                },
              ),
              GestureDetector(
                child: CardSetting(text: "Terms & Conditions"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Terms(),
                      ));
                },
              ),
              GestureDetector(
                  child: CardSetting(text: "Our Partenrs"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => OurPartners()),
                      ),
                    );
                  }),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => Support()),
                      ),
                    );
                  },
                  child: CardSetting(text: "Support")),
              GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text(
                                "Logout",
                                style: GoogleFonts.poppins(),
                              ),
                              content: Text(
                                "Are you sure?",
                                style: GoogleFonts.poppins(fontSize: 15),
                              ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.deepOrangeAccent, width: 3),
                                      color: Colors.white
                                  ),
                                  child: MaterialButton(
                                    onPressed: ()=> Navigator.pop(context),
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.poppins(
                                          color: Colors.deepOrangeAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.deepOrangeAccent, width: 3),
                                      color: Colors.deepOrangeAccent
                                  ),
                                  child: MaterialButton(
                                    onPressed: ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogIn(),),),
                                    child: Text(
                                      "Sure",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),


                          ],
                            ));
                  },
                  child: CardSetting(text: "Log out")),
            ],
          ),
        ),
      ),
    );
  }
}
