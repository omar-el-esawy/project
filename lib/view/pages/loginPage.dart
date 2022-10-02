import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orangeeduapp/view/componant/OrangeDigital.dart';
import 'package:orangeeduapp/view/pages/SignUp.dart';
import 'package:orangeeduapp/view/pages/navigateBar.dart';
import 'package:orangeeduapp/view_model/bloc/Login/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../componant/comp.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 100),
                    orangeDigitalCenter(),
                    SizedBox(height: 100),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Login",
                            style: GoogleFonts.poppins(
                                fontSize: 28, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 30),
                          TextFormField(
                            controller: LoginCubit.get(context).email,
                            decoration: InputDecoration(
                              border: myinputborder(),
                              hintText: "E-Mail",
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            obscureText: LoginCubit.get(context).isObscure,
                            controller: LoginCubit.get(context).passwrod,
                            decoration: InputDecoration(
                                border: myinputborder(),
                                hintText: "Password",
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    LoginCubit.get(context).ChangeVisablity();
                                  },
                                  icon: Icon(
                                      LoginCubit.get(context).isObscure
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.orange),
                                )),
                          ),
                          SizedBox(height: 10),
                          Text("Forgot Password?"),
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TowButtons(
                        up: "Login",
                        down: "Sign Up",
                        downPage: SignUp(),
                        fun1: () {
                          LoginCubit.get(context).logIn(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

OutlineInputBorder myinputborder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
    borderRadius: new BorderRadius.circular(10.0),
    borderSide: new BorderSide(),
  );
}

//01153569690
