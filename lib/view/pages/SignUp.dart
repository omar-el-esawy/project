import 'package:flutter/material.dart';
import 'package:orangeeduapp/view/componant/OrangeDigital.dart';
import 'package:orangeeduapp/view/pages/Home.dart';
import 'package:orangeeduapp/view/pages/loginPage.dart';
import 'package:orangeeduapp/view/pages/navigateBar.dart';
import 'package:orangeeduapp/view_model/bloc/SignUp/sign_up_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../componant/comp.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController verfyPassword = TextEditingController();
  TextEditingController PhoneNum = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<SignUpCubit, SignUpState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            SignUpCubit myCubit = SignUpCubit.get(context);
            return Container(
              width: double.infinity,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
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
                          Text("Sign UP", style: GoogleFonts.poppins(
                              fontSize: 28, fontWeight: FontWeight.w500),),
                          SizedBox(height: 30),
                          TextFormField(
                            controller: myCubit.name,
                            decoration: InputDecoration(
                              border: myinputborder(),
                              hintText: "Name",
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: myCubit.email,
                            decoration: InputDecoration(
                              border: myinputborder(),
                              hintText: "E-Mail",
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: myCubit.passwrod,
                            decoration: InputDecoration(
                                border: myinputborder(),
                                hintText: "Password",
                                suffixIcon: Icon(Icons.remove_red_eye,
                                    color: Colors.orange)),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: verfyPassword,
                            decoration: InputDecoration(
                                border: myinputborder(),
                                hintText: "Verify Password",
                                suffixIcon: Icon(Icons.remove_red_eye,
                                    color: Colors.orange)),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: myCubit.phone,
                            decoration: InputDecoration(
                              border: myinputborder(),
                              hintText: "Phone Number",
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 60),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    DropDownWithText(
                                        text: "Gender",
                                        list: ["Male", "Female"]),
                                    SizedBox(
                                      width: 80,
                                    ),
                                    DropDownWithText(
                                        text: "University",
                                        list: ["AUC", "CU"]),
                                  ],
                                ),
                                SizedBox(height: 20),
                                DropDownWithText(
                                    text: "Grade ",
                                    list: ["Grade 1", "Grade 2"]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TowButtons(
                        up: "Sign Up",
                        down: "Login",
                        downPage: LogIn(),
                        fun1: () {
                          SignUpCubit.get(context).signUp(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
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
