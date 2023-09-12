import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';

class TextChatContent extends StatelessWidget {
  const TextChatContent({
    super.key,
    required this.onpressed,
    required this.message,
  });
  final Function() onpressed;
  final String message;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ChatBubble(
      seen: true,
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: size.width * 0.7),
              child: Text(
                message,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            kWidthFive,
            InkWell(
              onTap: onpressed,
              child: const Icon(
                Icons.edit_outlined,
                size: 20,
                color: customPrimaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
