import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

List<Message> messageList = [
  Message(text: "Hola cassie!", fromWho: FromWho.mine),
  Message(text: "Ya comiste?", fromWho: FromWho.mine)
];


Future<void>sendMessage(String text) async {
  //TODO: implementar metodo
}


}