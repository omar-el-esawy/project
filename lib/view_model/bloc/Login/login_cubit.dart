import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orangeeduapp/view/pages/navigateBar.dart';
import 'package:orangeeduapp/view_model/database/network/dio_helper.dart';
import 'package:orangeeduapp/view_model/database/network/end_points.dart';

import '../../../constatnt.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  TextEditingController email = TextEditingController();
  TextEditingController passwrod = TextEditingController();
  bool isObscure = true;

  static LoginCubit get(context) => BlocProvider.of(context);

  void logIn(context) {
    var data = {
      "email": email.text,
      "password": passwrod.text,
    };
    DioHelper.postData(url: loginEndPoint, data: data).then((value) {
      print(value.statusCode);
      if (value.statusCode == 200) {
        token = value.data["data"]["accessToken"];
        print(token);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => GoogleNav()));
      }
    }).catchError((onError) {
      print(onError);
    });
  }

  void ChangeVisablity() {
    isObscure = !isObscure;
    emit(LoginInitial());
  }
}
