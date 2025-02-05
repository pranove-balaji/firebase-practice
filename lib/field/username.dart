import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {
  final TextEditingController UserNameController;

  const UsernameField({super.key, required this.UserNameController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Enter a valid username";
          }
          return null;
        },
        controller: UserNameController,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person, color: Colors.deepPurpleAccent),
          labelText: "Username or Email",
          labelStyle: TextStyle(color: Colors.deepPurpleAccent),
          hintText: "Enter Your Email or Username",
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
