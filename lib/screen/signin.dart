import 'package:firebase/button/forgot_passowrd.dart';
import 'package:firebase/button/sign_in.dart';
import 'package:firebase/field/password.dart';
import 'package:firebase/field/username.dart';
import 'package:firebase/screen/signup.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool textvisible = true;
  final _signInFormKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String text = "login";
  String userlabel = "username or Email";
  Icon mode = Icon(Icons.dark_mode);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Form(
            key: _signInFormKey,
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          mode = Icon(Icons.light_mode);
                        },
                        icon: mode),
                  ],
                ),
                SizedBox(
                  height: 300,
                  child: Image.asset("assets/png_assets/signin.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Sign-In",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
                UsernameField(
                  userNameController: userNameController,
                  hint: userlabel,
                  label: userlabel,
                ),
                PasswordField(passwordController: passwordController),
                SignInButton(
                  formKey: _signInFormKey,
                  text: text,
                ),
                ForgotPassword(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New User?",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (builder) {
                            return AppSignUp();
                          }));
                        },
                        child: Text(
                          "Sign-Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
