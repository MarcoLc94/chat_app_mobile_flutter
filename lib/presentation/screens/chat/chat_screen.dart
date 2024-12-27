

import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://www.alleycat.org/wp-content/uploads/2019/03/FELV-cat.jpg'),
          ),
        ),
        title: Text("Cassie", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pinkAccent),),
      ),
      body: _Chatview(),
    );
  }
}

class _Chatview extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (
                  index % 2 == 0
            ) ? const HerMessageBubble()
              : const MyMessageBubble();
              },
            )),
        
            MessageFieldBox()
          ],
        ),
      ),
    );
  }
}