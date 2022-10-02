import 'dart:math' as math;

import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<FAQ> {
  bool? _expanded2;
  final _key3 = GlobalKey<ExpansionWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "FAQ",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            clipBehavior: Clip.hardEdge,
            child: ExpansionWidget(
                onSaveState: (value) => _expanded2 = !value,
                onRestoreState: () => _expanded2,
                duration: const Duration(seconds: 1),
                titleBuilder:
                    (_, double easeInValue, bool isExpaned, toogleFunction) {
                  return Material(
                    borderRadius: BorderRadius.only(
                        topLeft:  Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: Colors.orange,
                    child: InkWell(
                        onTap: () => toogleFunction(animated: true),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Text(
                                      'Q1 how many countries Oranges Digital center is in',
                                      style: TextStyle(
                                          color: Color.lerp(Colors.white,
                                              Colors.white, easeInValue)))),
                              Container(
                                color: Colors.transparent,
                                height: 1,
                                width: easeInValue * math.pi * 40,
                              ),
                              Transform.rotate(
                                angle: math.pi * (easeInValue + 0),
                                child: Icon(Icons.arrow_drop_up_sharp,
                                    size: 40,
                                    color: Color.lerp(Colors.white,
                                        Colors.white, easeInValue)),
                                alignment: Alignment.center,
                              )
                            ],
                          ),
                        )),
                  );
                },
                content: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Text('16 Country',
                        style: TextStyle(color: Colors.white)),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
