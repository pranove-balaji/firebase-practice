import 'package:firebase/authentication/auth.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  TextEditingController userName;
  TextEditingController userPass;

  String text = "Signup";
  SignUpButton(
      {super.key,
      required this.formKey,
      required this.text,
      required this.userName,
      required this.userPass});

  @override
  Widget build(BuildContext context) {
    Authenticatio _auth = Authenticatio();
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent),
          onPressed: () {
            if (formKey.currentState!.validate()) {
              _auth.signUp(userName.text.trim(), userPass.text.trim());
            }
          },
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
