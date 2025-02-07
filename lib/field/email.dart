import 'package:flutter/material.dart';

class emailFiel extends StatefulWidget {
  TextEditingController email = TextEditingController();
  emailFiel({super.key, required this.email});

  @override
  State<emailFiel> createState() => _emailFielState();
}

class _emailFielState extends State<emailFiel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: TextFormField(
          validator: (Email) {
            if (Email != Null && Email!.isEmpty) {
              return "enter Email";
            }
          },
          controller: widget.email,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.email),
            prefixIconColor: Colors.deepPurpleAccent,
            labelText: "Enter Email",
            labelStyle: TextStyle(color: Colors.deepPurpleAccent),
            hintText: "Email",
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
    ;
  }
}
