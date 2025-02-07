import 'package:firebase/button/sign_in.dart';
import 'package:firebase/field/email.dart';
import 'package:firebase/field/password.dart';
import 'package:firebase/field/username.dart';
import 'package:flutter/material.dart';

class AppSignUp extends StatefulWidget {
  const AppSignUp({super.key});

  @override
  State<AppSignUp> createState() => _AppSignUpState();
}

class _AppSignUpState extends State<AppSignUp> {
  final _appKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController repass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _appKey,
          child: ListView(
            children: [
              Container(
                child: SizedBox(
                  height: 300,
                  child: Image.asset("assets/png_assets/signup.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Sign-Up",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              UsernameField(
                  userNameController: userNameController,
                  label: "Enter Your Username",
                  hint: "Username"),
              emailFiel(email: email),
              PasswordField(passwordController: pass),
              PasswordField(passwordController: repass),
              SignInButton(formKey: _appKey, text: "SignUp")
            ],
          ),
        ),
      ),
    );
  }
}
