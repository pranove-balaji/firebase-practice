import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const SignInButton({super.key, required this.formKey});

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
            "Log In",
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}

