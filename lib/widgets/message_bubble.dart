import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isUser;

  MessageBubble({required this.text, required this.isUser});

  @override
  Widget build(context) {
    return Align(
      alignment:
          isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        color: isUser ? Colors.blue : Colors.grey,
        child: Text(text),
      ),
    );
  }
}
