import 'package:flutter/material.dart';
import '../services/ai_service.dart';
import '../services/db_service.dart';
import '../widgets/message_bubble.dart';

class ChatScreen extends StatefulWidget {
  @override
  State createState() => _ChatState();
}

class _ChatState extends State<ChatScreen> {
  TextEditingController controller = TextEditingController();
  List<Map> messages = [];

  void send() async {
    String text = controller.text;

    setState(() {
      messages.add({"text": text, "user": true});
    });

    controller.clear();

    String reply = await AIService.ask(text);

    await DBService.save(text, true);
    await DBService.save(reply, false);

    setState(() {
      messages.add({"text": reply, "user": false});
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("AI Tutor")),
      body: Column(children: [
        Expanded(
          child: ListView(
            children: messages
                .map((m) => MessageBubble(
                    text: m["text"], isUser: m["user"]))
                .toList(),
          ),
        ),
        Row(children: [
          Expanded(child: TextField(controller: controller)),
          IconButton(icon: Icon(Icons.send), onPressed: send)
        ])
      ]),
    );
  }
}
