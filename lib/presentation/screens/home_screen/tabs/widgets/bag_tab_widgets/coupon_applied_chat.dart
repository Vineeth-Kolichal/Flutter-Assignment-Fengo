import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CouponAppliedChatWidget extends StatelessWidget {
  const CouponAppliedChatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocSelector<BagTabBloc, BagTabState, double?>(
      selector: (state) {
        return state.couponValue;
      },
      builder: (context, state) {
        return Visibility(
          visible: state != null,
          child: ChatBubble(
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/you_won.jpg',
                  width: size.width * 0.3,
                ),
                const Text(
                  'Yahoo!!',
                  style: TextStyle(fontSize: 17),
                ),
                RichText(
                  text: TextSpan(
                    text: 'I won',
                    style: const TextStyle(color: textBlackColor),
                    children: [
                      TextSpan(
                        text: ' ₹$state',
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: customPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
