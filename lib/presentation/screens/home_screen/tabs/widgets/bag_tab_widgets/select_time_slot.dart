import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_assignment_fengo/presentation/widgets/custom_elevated_button.dart';

class SelectTimeSlot extends StatelessWidget {
  const SelectTimeSlot({
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
        children: [
          ChatBubble(
            isSender: false,
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Please select a time slot to collect the products from our store',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Visibility(
            visible: !isSelected,
            child: ChatBubble(
                isSender: false,
                isTransparant: true,
                content: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    childAspectRatio: 3.5,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    children: List.generate(3, (index) {
                      return CustomElevatedButton(
                        labelTextFontSize: 12,
                        borderColor: transparent,
                        width: null,
                        labelText: '10 am to 12 pm',
                        backgroundColor: whiteBackgroundColor,
                        fontColor: textBlackColor,
                        onPressed: () {},
                      );
                    }))),
          )
        ],
      ),
    );
  }
}
