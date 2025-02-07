import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController passwordController;
  const PasswordField({super.key, required this.passwordController});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool textVisible = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: TextFormField(
          maxLength: 6,
          keyboardType: TextInputType.text,
          validator: (repassword) {
            if (repassword != Null && repassword!.isEmpty) {
              return "Enter valid password";
            }
          },
          controller: widget.passwordController,
          obscureText: textVisible,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.password),
            prefixIconColor: Colors.deepPurpleAccent,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    textVisible = !textVisible;
                  });
                },
                icon: textVisible
                    ? Icon(Icons.remove_red_eye)
                    : Icon(Icons.visibility_off)),
            suffixIconColor: Colors.deepPurpleAccent,
            labelText: "Enter Password",
            labelStyle: TextStyle(color: Colors.deepPurpleAccent),
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ));
  }
}
