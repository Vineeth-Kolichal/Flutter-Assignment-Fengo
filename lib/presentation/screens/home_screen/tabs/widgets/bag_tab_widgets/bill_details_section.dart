
import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/cart_bloc/cart_bloc.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bold_text.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BillDetailsSectionChat extends StatelessWidget {
  const BillDetailsSectionChat({
    super.key,
    required this.visible,
  });
  final bool visible;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: ChatBubble(
          isSender: false,
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoldText(
                  'Bill details',
                  fontSize: 20,
                ),
                kHeightTen,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BoldText('ItemTotal'),
                    BlocBuilder<CartBloc, CartState>(
                      builder: (context, state) {
                        return BoldText('₹ ${state.total}');
                      },
                    ),
                  ],
                ),
                kHeightTen,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Coupon discount',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 90, 90, 90)),
                    ),
                    BoldText(
                      '-9.00.',
                      fontColor: customPrimaryColor,
                    )
                  ],
                ),
                kHeightTen,
                dottedLine,
                kHeightTen,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BoldText(
                      'Grand total',
                      fontSize: 18,
                    ),
                    BoldText(
                      '255.00',
                      fontSize: 18,
                      fontColor: customPrimaryColor,
                    ),
                  ],
                ),
                kHeightTen,
                dottedLine,
                kHeightTen,
                Text(
                  'There might be a change in the the final bill which will be generated rom the shop',
                  style:
                      TextStyle(color: const Color.fromARGB(255, 90, 90, 90)),
                ),
                kHeightTen,
                dottedLine,
                kHeightTwenty,
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Add Instructions',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.add,
                        size: 12,
                      )
                    ],
                  ),
                ),
                kHeightTen
              ],
            ),
          )),
    );
  }
}

