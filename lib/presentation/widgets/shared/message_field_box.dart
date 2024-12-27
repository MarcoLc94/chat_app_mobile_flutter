import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    
  final textController = TextEditingController();
  final FocusNode focusNode = FocusNode();
    
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration(
        hintText : "Type your message here!",
        enabledBorder: outlineInputBorder, focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: Icon(Icons.send_outlined),
        onPressed: () { 
          final textValue = textController.value.text;
          print("El valor es: $textValue");
           textController.clear();
          },)
      );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print("El valor es: $value");
         textController.clear();
         focusNode.requestFocus();
      },
    );
  }
}