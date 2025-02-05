import 'package:firebase/button/forgot_passowrd.dart';
import 'package:firebase/button/sign_in.dart';
import 'package:firebase/field/password.dart';
import 'package:firebase/field/username.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Form(
        key: _signInFormKey,
        child: ListView(
          children: [
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
            UsernameField(UserNameController: userNameController),
            PasswordField(passwordController: passwordController),
            SignInButton(formKey: _signInFormKey),
            ForgotPassword(),
          ],
        ),
      ),
    ));
  }
}
