import 'package:flutter/cupertino.dart';
import 'package:flutter_massage_screen/data/message_type.dart';
import 'package:flutter_massage_screen/models/message.dart';

class MessageViewModel extends ChangeNotifier {
  List<Message> _messages = [];
  List<Message> get messages => _messages;

  Future<void> readAll() async {
    _messages = [
      Message(
          messageType: MessageType.send,
          message: "こんにちは。山田です。",
          date: "2020/07/01"),
      Message(
          messageType: MessageType.receive,
          message: "こんにちは。ご連絡ありがとうございます。。",
          date: "2020/07/01"),
      Message(
          messageType: MessageType.send,
          message: "こんにちは。こんにちは。こんにちは。こんにちは。こんにちは。こんにちは。",
          date: "2020/07/01"),
      Message(
          messageType: MessageType.receive,
          message: "こんにちは。",
          date: "2020/07/01"),
    ];
    notifyListeners();
  }
}
