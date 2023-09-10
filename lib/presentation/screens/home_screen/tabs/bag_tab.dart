import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/cart_bloc/cart_bloc.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_assignment_fengo/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/bag_tab_widgets/cart_chat_widget.dart';
import 'widgets/bag_tab_widgets/coupon_chat_section.dart';

class BagTab extends StatelessWidget {
  const BagTab({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.height,
      child: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.height,
            child: Image.asset(
              'assets/images/background_chat.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              reverse: true,
              children: [
                BillDetailsSectionChat(),
                DeliveryMethodChat(
                  isSelected: false,
                ),
                const CouponAppliedChatWidget(),
                const CouponChatSection(isCouponApplied: false),
                Visibility(visible: true, child: const CartChatWidget()),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DeliveryMethodChat extends StatelessWidget {
  const DeliveryMethodChat({
    super.key,
    required this.isSelected,
  });
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BubbleSpecialOne(
          color: whiteBackgroundColor,
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
          child: BubbleSpecialOne(
            isSender: false,
            color: transparent,
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
          child: BubbleSpecialOne(
            isSender: false,
            color: transparent,
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
    );
  }
}

class CouponAppliedChatWidget extends StatelessWidget {
  const CouponAppliedChatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BubbleSpecialOne(
        color: whiteBackgroundColor,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/you_won.jpg',
              width: size.width * 0.3,
            ),
            Text(
              'Yahoo!!',
              style: TextStyle(fontSize: 17),
            ),
            RichText(
                text: TextSpan(
                    text: 'I won',
                    style: TextStyle(color: textBlackColor),
                    children: [
                  TextSpan(
                      text: ' 9.00',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: customPrimaryColor))
                ]))
          ],
        ));
  }
}

class BillDetailsSectionChat extends StatelessWidget {
  const BillDetailsSectionChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BubbleSpecialOne(
        color: whiteBackgroundColor,
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
                    style:
                        TextStyle(color: const Color.fromARGB(255, 90, 90, 90)),
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
                style: TextStyle(color: const Color.fromARGB(255, 90, 90, 90)),
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
        ));
  }
}

class BoldText extends StatelessWidget {
  const BoldText(
    this.text, {
    super.key,
    this.fontSize,
    this.fontColor,
  });
  final String text;
  final double? fontSize;
  final Color? fontColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w800, fontSize: fontSize, color: fontColor),
    );
  }
}
