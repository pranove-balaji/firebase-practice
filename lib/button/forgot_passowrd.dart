import 'package:firebase/screen/forgotpassword.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 0),
          child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AppForgotPassword();
                }));
              },
              child: Text("Forgot password")),
        )
      ],
    );
  }
}
