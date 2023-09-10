import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/presentation/widgets/custom_elevated_button.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: greenbackgroundColor,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'HOORAY!!',
              style: TextStyle(
                  fontSize: 27,
                  color: textWhiteColor,
                  fontWeight: FontWeight.w600),
            ),
            LottieBuilder.asset(
              'assets/lottie_jsons/success.json',
              height: size.width * 0.5,
            ),
            const Text(
              'Your order has been\n placed successfully',
              textAlign: TextAlign.center,
              style: TextStyle(color: textWhiteColor, fontSize: 17),
            ),
            const SizedBox(height: 25),
            CustomElevatedButton(
              backgroundColor: Colors.white,
              labelText: 'Continue Shopping',
              fontColor: greenFontColor,
              width: 0.5,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
