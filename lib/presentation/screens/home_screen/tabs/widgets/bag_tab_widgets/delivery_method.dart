
import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_assignment_fengo/presentation/widgets/custom_elevated_button.dart';
import 'package:iconsax/iconsax.dart';

class DeliveryMethodChat extends StatelessWidget {
  const DeliveryMethodChat({
    super.key,
    required this.isSelected,
    required this.visible,
  });
  final bool isSelected;
  final bool visible;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChatBubble(
            isSender: false,
            content: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Select delivery method',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: !isSelected,
            child: ChatBubble(
              isSender: false,
              isTransparant: true,
              content: CustomElevatedButton(
                prefixIcon: const Icon(
                  Iconsax.home,
                  color: customPrimaryColor,
                  size: 18,
                ),
                borderColor: null,
                width: 0.7,
                labelText: 'Home delivery',
                backgroundColor: whiteBackgroundColor,
                fontColor: textBlackColor,
                onPressed: () {},
              ),
            ),
          ),
          Visibility(
            visible: !isSelected,
            child: ChatBubble(
              isSender: false,
              isTransparant: true,
              content: CustomElevatedButton(
                prefixIcon: const Icon(
                  Iconsax.shop,
                  color: customPrimaryColor,
                  size: 18,
                ),
                borderColor: null,
                width: 0.7,
                labelText: 'Take delivery',
                backgroundColor: whiteBackgroundColor,
                fontColor: textBlackColor,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
