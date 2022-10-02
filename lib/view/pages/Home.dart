import 'package:flutter/material.dart';
import 'package:orangeeduapp/view/componant/HomeComp/MyCard.dart';
import 'package:orangeeduapp/view/pages/Calender.dart';
import 'package:orangeeduapp/view/pages/Finals.dart';
import 'package:orangeeduapp/view/pages/Lectures.dart';
import 'package:orangeeduapp/view/pages/Midterms.dart';
import 'package:orangeeduapp/view/pages/Sections.dart';
import 'package:orangeeduapp/view/pages/Notes.dart';

import '../componant/OrangeDigital.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Card {
  String? icon;
  String? dataText;
  Widget? page;

  Card(this.icon, this.dataText, this.page) {}
}

class Home extends StatelessWidget {
  List<Card> list = [
    Card("assets/icons/lecture.svg", "Lcetures", Lectures()),
    Card("assets/icons/sections.svg", "Sectoins", Sections()),
    Card("assets/icons/midterm.svg", "Midterms", Midterms()),
    Card("assets/icons/final.svg", "Finals", Finals()),
    Card("assets/icons/event.svg", "Events", MyHomePage()),
    Card("assets/icons/notes.svg", "Notes", Note()),
  ];

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Column(
          children: [
            SizedBox(height: 70),
            orangeDigitalCenter(),
            GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                list.length,
                (index) => GestureDetector(
                  child: myCard(
                      icon: list[index].icon!, dataText: list[index].dataText!),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => list[index].page!),
                      ),
                    );
                  },
                ),
              ),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              childAspectRatio: 1.3,
            ),
          ],
        ),
      ),
    );
  }
}
