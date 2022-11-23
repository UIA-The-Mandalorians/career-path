import 'package:app/business/bloc/authentication_bloc.dart';
import 'package:app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
          backgroundColor: Color(0xff1A1739),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 7.0, left: 100.0, right: 100.0),
                      child: Center(
                          child: Image.asset("assets/images/img.png",
                              width: 170, height: 170)),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.35,
                          left: MediaQuery.of(context).size.width * 0.39),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.41,
                          left: MediaQuery.of(context).size.width * 0.21),
                      child: Text(
                        "Please enter details below",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.46,
                            left: 35,
                            right: 35),
                        child: BlocConsumer<LoginBloc, LoginState>(
                          listener: (context, state) {
                            print(state.status);
                            if (state.status == LoginStatus.success) {
                              print(state.status);
                              Get.offAllNamed(AppRoutes.homePageScreen);
                            }
                            if (state.status == LoginStatus.failure) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(state.message),
                                ),
                              );
                            }
                          },
                          builder: (context, state) {
                            return Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        fillColor: Colors.white38,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        hintText: 'stevejs@gmail.com',
                                      ),
                                      onChanged: ((value) {
                                        print(value);
                                        context.read<LoginBloc>().add(
                                            LoginEmailChangedEvent(
                                                email: value));
                                      }),
                                      cursorColor: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                    height: 40,
                                    child: TextField(
                                        style: TextStyle(color: Colors.white),
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            fillColor: Colors.white38,
                                            filled: true,
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                            hintText: '****'),
                                        onChanged: ((value) {
                                          context.read<LoginBloc>().add(
                                              LoginPasswordChangedEvent(
                                                  password: value));
                                        }),
                                        cursorColor: Colors.white)),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.60,
                            left: MediaQuery.of(context).size.width * 0.1),
                        child: TextButton(
                            onPressed: () {},
                            child: Text("Forgot Password?",
                                style: TextStyle(
                                    color: Color(0xff4051ED),
                                    fontSize: 14,
                                    decoration: TextDecoration.underline)))),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.67,
                          left: MediaQuery.of(context).size.width * 0.36),
                      child: SizedBox(
                        height: 35,
                        width: 100,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffE36363),
                              foregroundColor: Colors.white54,
                              elevation: 10, // Elevation
                            ),
                            onPressed: () {
                              context.read<LoginBloc>().add(
                                    LoginButtonPressedEvent(),
                                  );
                            },
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              selectionColor: Color(0xffE36363),
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.74,
                          left: MediaQuery.of(context).size.width * 0.458),
                      child: Text(
                        "Or",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.80,
                          left: MediaQuery.of(context).size.width * 0.17),
                      child: Row(
                        children: [
                          Text("Don't Have an an Account?",
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 16)),
                          TextButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 10, // Elevation
                              ),
                              onPressed: () {},
                              child: Text("Register",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4051ED),
                                      fontSize: 16))),
                          // SizedBox(
                          //   width: 40,
                          //   height: 40,
                          //   child: Image.asset('assets/images/google.png'))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
