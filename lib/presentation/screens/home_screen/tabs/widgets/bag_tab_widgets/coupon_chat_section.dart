import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/cart_bloc/cart_bloc.dart';
import 'package:flutter_assignment_fengo/business_logic/cubits/cubit/coupon_cubit.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/data/models/coupon_model.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/tabs/bag_tab.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_assignment_fengo/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class CouponChatSection extends StatelessWidget {
  const CouponChatSection({
    super.key,
    required this.isCouponApplied,
  });
  final bool isCouponApplied;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        double amount = 300 - state.total;
        if (amount <= 0) {
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
              BlocSelector<BagTabBloc, BagTabState, double?>(
                selector: (state) {
                  return state.couponValue;
                },
                builder: (context, couponValue) {
                  return Column(
                    children: [
                      Visibility(
                        visible: couponValue == null,
                        child: ChatBubble(
                          isSender: false,
                          isTransparant: true,
                          content: CustomElevatedButton(
                            labelText: "Continue without applying",
                            backgroundColor: whiteBackgroundColor,
                            fontColor: customPrimaryColor,
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Visibility(
                        visible: couponValue == null,
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
                },
              )
            ],
          );
        }
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
                        text: '₹$amount',
                        style: const TextStyle(fontWeight: FontWeight.w900)),
                    const TextSpan(text: ' to avail coupon'),
                  ],
                ),
              ),
            ),
            ChatBubble(
              isSender: false,
              isTransparant: true,
              content: CustomElevatedButton(
                labelText: 'Proceed',
                backgroundColor: customPrimaryColor,
                fontColor: textWhiteColor,
                onPressed: () {},
              ),
            )
          ],
        );
      },
    );
  }

  Future<dynamic> couponGridDialoge(BuildContext context, Size size) {
    return showDialog(
      context: context,
      builder: (ctx) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              insetPadding: const EdgeInsets.symmetric(horizontal: 15),
              content: SizedBox(
                child: Container(
                  color: whiteBackgroundColor,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Iconsax.discount_shape,
                              color: customPrimaryColor,
                              size: 35,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Apply coupon and get discount',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text('9 Unused Coupons')
                              ],
                            ),
                          )
                        ],
                      ),
                      kHeightTen,
                      SizedBox(
                        height: size.width,
                        width: size.width * 0.7,
                        child: BlocBuilder<CouponCubit, CouponState>(
                          builder: (context, state) {
                            return GridView.count(
                              crossAxisCount: 3,
                              crossAxisSpacing: 8.0,
                              mainAxisSpacing: 8.0,
                              children:
                                  List.generate(state.coupons.length, (index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.of(ctx).pop();
                                    context.read<BagTabBloc>().add(ApplyCoupon(
                                        amount: state.coupons[index].amount));

                                    applyCoupon(
                                        context, size, state.coupons[index]);
                                  },
                                  child: Center(
                                      child: Card(
                                    child: Container(
                                      padding: const EdgeInsets.all(5),
                                      child: Image.asset(
                                          'assets/images/coupon.png'),
                                    ),
                                  )),
                                );
                              }),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            kHeightTen,
            CustomElevatedButton(
              width: 0.67,
              labelText: 'Continue without applying',
              backgroundColor: whiteBackgroundColor,
              fontColor: customPrimaryColor,
              onPressed: () {},
            )
          ],
        );
      },
    );
  }

  Future<dynamic> applyCoupon(
      BuildContext context, Size size, CouponModel couponModel) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (ctx2) {
        Future.delayed(const Duration(milliseconds: 2000), () {
          Navigator.of(ctx2).pop();
        });
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          insetPadding: const EdgeInsets.symmetric(horizontal: 15),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Coupon Applied!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              kHeightTen,
              Image.asset(
                'assets/images/coupon.png',
                height: size.width * 0.5,
              ),
              kHeightTen,
              const Text("Congratulations, you've saved"),
              kHeightTen,
              Text(
                '₹ ${couponModel.amount}',
                style: const TextStyle(
                    color: customPrimaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        );
      },
    );
  }
}
