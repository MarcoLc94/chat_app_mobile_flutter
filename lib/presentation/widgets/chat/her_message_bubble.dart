import 'package:flutter/material.dart';


class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
        decoration: BoxDecoration(
        color: colors.secondary,
        borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), child: Text('Hola mundo', style: TextStyle(color: Colors.white,),)),
      ),
      SizedBox(height: 5,),
      ImageBubble(),
      SizedBox(height: 10,)
      ],
    );
  }
}

class ImageBubble extends StatelessWidget {
  const ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network("https://yesno.wtf/assets/no/14-cb78bf7104f848794808d61b9cd83eba.gif",
      width: size.width * 0.7,
      height: 150,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Container(
          width: size.width * 8.7,
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text("Cassie esta enviando una image..."),
        );
      },));
  }
}