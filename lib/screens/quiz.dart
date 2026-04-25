import 'package:flutter/material.dart';
import '../services/ai_service.dart';

class QuizScreen extends StatefulWidget {
  @override
  State createState() => _QuizState();
}

class _QuizState extends State<QuizScreen> {
  String result = "";

  void generate() async {
    String res = await AIService.ask("Create 5 quiz questions about science");
    setState(() => result = res);
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz")),
      body: Column(children: [
        ElevatedButton(onPressed: generate, child: Text("Generate Quiz")),
        Expanded(child: SingleChildScrollView(child: Text(result)))
      ]),
    );
  }
}
