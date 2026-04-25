import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static final auth = FirebaseAuth.instance;

  static Future login(String email, String pass) async {
    await auth.signInWithEmailAndPassword(email: email, password: pass);
  }

  static Future register(String email, String pass) async {
    await auth.createUserWithEmailAndPassword(email: email, password: pass);
  }
}
