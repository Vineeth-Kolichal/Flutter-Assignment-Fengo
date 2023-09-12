import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/business_logic/cubits/cubit/coupon_cubit.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/tabs/widgets/dialoges/select_coupon_dialoge.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_assignment_fengo/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class CouponChatSection extends StatelessWidget {
  const CouponChatSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocSelector<BagTabBloc, BagTabState, Map<String, dynamic>>(
      selector: (state) {
        bool proceed = (state.couponValue == null) &&
            state.total < 300.0 &&
            !state.withoutCoupon;
        bool applyCoupon = (state.couponValue == null) &&
            state.total >= 300.0 &&
            !state.withoutCoupon;
        Map<String, dynamic> states = {
          "total": state.total,
          "proceed": proceed,
          "applyCoupon": applyCoupon
        };
        return states;
      },
      builder: (context, states) {
        if (states["total"] >= 300) {
          return Column(
            children: [
              const ChatBubble(
                isSender: false,
                content: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Iconsax.discount_shape,
                        color: customPrimaryColor,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '9 Unused Coupons',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Text('Apply coupon and get discount')
                      ],
                    )
                  ],
                ),
              ),
              Visibility(
                visible: states["applyCoupon"],
                child: ChatBubble(
                  isSender: false,
                  isTransparant: true,
                  content: CustomElevatedButton(
                    labelText: "Continue without applying",
                    backgroundColor: whiteBackgroundColor,
                    fontColor: customPrimaryColor,
                    onPressed: () {
                      context
                          .read<BagTabBloc>()
                          .add(const WithoutCoupon(withoutCoupon: true));
                    },
                  ),
                ),
              ),
              Visibility(
                visible: states["applyCoupon"],
                child: ChatBubble(
                  isSender: false,
                  isTransparant: true,
                  content: CustomElevatedButton(
                    labelText: "Apply coupon",
                    backgroundColor: customPrimaryColor,
                    fontColor: textWhiteColor,
                    onPressed: () {
                      context.read<CouponCubit>().getCoupons();
                      couponGridDialoge(context, size);
                    },
                  ),
                ),
              )
            ],
          );
        } else {
          return Column(
            children: [
              ChatBubble(
                isSender: false,
                content: RichText(
                  text: TextSpan(
                    text: 'Add produts worth ',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              '₹${(300 - states["total"]).toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.w900)),
                      const TextSpan(text: ' to avail coupon'),
                    ],
                  ),
                ),
              ),
              BlocSelector<BagTabBloc, BagTabState, bool>(
                selector: (state) {
                  return (state.couponValue == null) &&
                      state.total < 300.0 &&
                      !state.withoutCoupon;
                },
                builder: (context, visible) {
                  return Visibility(
                    visible: states["proceed"],
                    child: ChatBubble(
                      isSender: false,
                      isTransparant: true,
                      content: CustomElevatedButton(
                        labelText: 'Proceed',
                        backgroundColor: customPrimaryColor,
                        fontColor: textWhiteColor,
                        onPressed: () {
                          context
                              .read<BagTabBloc>()
                              .add(const WithoutCoupon(withoutCoupon: true));
                        },
                      ),
                    ),
                  );
                },
              )
            ],
          );
        }
      },
    );
  }
}
