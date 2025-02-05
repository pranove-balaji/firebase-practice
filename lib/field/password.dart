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
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty && value != null) {
            return "Enter valid username";
          }
        },
        controller: widget.passwordController,
        obscureText: textVisible,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.password,
              color: Colors.deepPurpleAccent,
            ),
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    textVisible = !textVisible;
                  });
                },
                icon: textVisible
                    ? Icon(
                        Icons.remove_red_eye,
                        color: Colors.deepPurpleAccent,
                      )
                    : Icon(Icons.visibility_off)),
            labelText: "Password",
            labelStyle: TextStyle(color: Colors.deepPurpleAccent),
            hintText: "Enter Your Password",
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey))),
      ),
    );
  }
}
