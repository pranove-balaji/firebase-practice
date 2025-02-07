import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  String text = "Login";
  SignInButton({super.key, required this.formKey, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent),
          onPressed: () {
            if (formKey.currentState!.validate()) {}
          },
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
