import 'package:firebase/button/sign_in.dart';
import 'package:firebase/field/username.dart';
import 'package:flutter/material.dart';

class AppForgotPassword extends StatefulWidget {
  const AppForgotPassword({super.key});

  @override
  State<AppForgotPassword> createState() => _AppForgotPasswordState();
}

class _AppForgotPasswordState extends State<AppForgotPassword> {
  final _forgotkey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.deepPurpleAccent),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Form(
                key: _forgotkey,
                child: ListView(
                  children: [
                    SizedBox(
                      height: 300,
                      child: Image.asset("assets/png_assets/forgot.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        "Forgot password",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    UsernameField(
                        userNameController: username,
                        label: "UserName",
                        hint: "Username"),
                    SignInButton(formKey: _forgotkey, text: "Send verification")
                  ],
                ))));
  }
}
