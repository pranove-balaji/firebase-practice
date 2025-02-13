import 'package:firebase/button/sign_in.dart';
import 'package:firebase/button/sign_up.dart';
import 'package:firebase/field/email.dart';
import 'package:firebase/field/password.dart';
import 'package:firebase/field/username.dart';
import 'package:firebase/screen/signin.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.deepPurpleAccent),
      ),
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
              SignUpButton(
                  formKey: _appKey,
                  text: "Signup",
                  userName: email,
                  userPass: pass),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) {
                          return SignInPage();
                        }));
                      },
                      child: Text(
                        "Sign-In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
