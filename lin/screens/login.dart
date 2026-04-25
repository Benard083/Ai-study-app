import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import 'home.dart';

class LoginScreen extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  void login(context) async {
    await AuthService.login(email.text, pass.text);
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (_) => HomeScreen()));
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          TextField(controller: email, decoration: InputDecoration(labelText: "Email")),
          TextField(controller: pass, obscureText: true),
          ElevatedButton(onPressed: () => login(context), child: Text("Login"))
        ]),
      ),
    );
  }
}
