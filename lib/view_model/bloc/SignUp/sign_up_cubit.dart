import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orangeeduapp/view/pages/loginPage.dart';

import '../../../constatnt.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController passwrod = TextEditingController();

  static SignUpCubit get(context) => BlocProvider.of(context);

  void signUp(context) {
    var data = {
      "email": email.text,
      "password": passwrod.text,
      "name": name.text,
      "phoneNumber": phone.text,
      "gender": "m",
      "universityId": "1",
    };
    DioHelper.postData(url: registerEndPoint, data: data).then((value) {
      print(value.statusCode);
      if (value.statusCode == 200) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LogIn()));
      }
    }).catchError((onError) {
      print(onError);
    });
  }
}
