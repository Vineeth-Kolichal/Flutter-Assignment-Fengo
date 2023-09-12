import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/business_logic/cubits/cubit/coupon_cubit.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/tabs/widgets/dialoges/apply_coupon_dialoge.dart';
import 'package:flutter_assignment_fengo/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

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
              onPressed: () {
                context
                    .read<BagTabBloc>()
                    .add(const WithoutCoupon(withoutCoupon: true));
                Navigator.of(ctx).pop();
              },
            )
          ],
        );
      },
    );
  }