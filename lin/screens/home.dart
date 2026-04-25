import 'package:flutter/material.dart';
import 'chat.dart';
import 'quiz.dart';
import 'premium.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("AI Study Elite")),
      body: Column(
        children: [
          ElevatedButton(
            child: Text("AI Chat"),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => ChatScreen())),
          ),
          ElevatedButton(
            child: Text("Quiz Generator"),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => QuizScreen())),
          ),
          ElevatedButton(
            child: Text("Go Premium"),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => PremiumScreen())),
          ),
        ],
      ),
    );
  }
}
