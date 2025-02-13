import 'package:firebase_auth/firebase_auth.dart';

class Authenticatio {
  Future signUp(String userName, String userPass) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: userName, password: userPass);
    return null;
  }
}
