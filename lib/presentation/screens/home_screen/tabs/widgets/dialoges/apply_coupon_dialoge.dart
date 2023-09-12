  import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/data/models/coupon_model.dart';

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