import 'package:flutter/material.dart';
import 'package:orangeeduapp/view/pages/splashScreen.dart';
import 'package:orangeeduapp/view_model/database/network/dio_helper.dart';

import 'view/pages/Lectures.dart';

void main() async {
  await DioHelper.init();
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
