import 'package:flutter/material.dart';

class UsernameField extends StatefulWidget {
  final TextEditingController userNameController;
  String label = "Username or Email";
  String hint = "Username or Email";

  UsernameField(
      {super.key,
      required this.userNameController,
      required this.label,
      required this.hint});

  @override
  State<UsernameField> createState() => _UsernameFieldState();
}

class _UsernameFieldState extends State<UsernameField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        validator: (value) {
          if (value == null || value!.isEmpty) {
            return "Enter a valid username";
          }
          return null;
        },
        controller: widget.userNameController,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person, color: Colors.deepPurpleAccent),
          labelText: widget.label,
          labelStyle: TextStyle(color: Colors.deepPurpleAccent),
          hintText: widget.hint,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
