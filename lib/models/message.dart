import 'package:flutter_massage_screen/data/message_type.dart';

class Message {
  final MessageType messageType;
  final String message;
  final String date;
  final String url;

  const Message({this.messageType, this.message, this.date, this.url});
}
