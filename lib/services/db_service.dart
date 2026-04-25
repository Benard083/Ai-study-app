import 'package:cloud_firestore/cloud_firestore.dart';

class DBService {
  static final db = FirebaseFirestore.instance;

  static Future save(String text, bool isUser) async {
    await db.collection("messages").add({
      "text": text,
      "isUser": isUser,
      "time": DateTime.now()
    });
  }
}
