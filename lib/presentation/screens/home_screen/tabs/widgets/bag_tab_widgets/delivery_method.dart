import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_assignment_fengo/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class DeliveryMethodChat extends StatelessWidget {
  const DeliveryMethodChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BagTabBloc, BagTabState, bool>(
      selector: (state) {
        bool visible = (state.couponValue != null) || state.withoutCoupon;
        return visible;
      },
      builder: (context, visible) {
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
              BlocSelector<BagTabBloc, BagTabState, DeliveryMethod?>(
                selector: (state) {
                  return state.deliveryMethod;
                },
                builder: (context, deliveryMethod) {
                  return Column(
                    children: [
                      Visibility(
                        visible: deliveryMethod == null,
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
                            onPressed: () {
                              context.read<BagTabBloc>().add(
                                  const SelectDeliverymethod(
                                      deliveryMethod:
                                          DeliveryMethod.homeDelivery));
                            },
                          ),
                        ),
                      ),
                      Visibility(
                        visible: deliveryMethod == null,
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
                            onPressed: () {
                              context.read<BagTabBloc>().add(
                                  const SelectDeliverymethod(
                                      deliveryMethod:
                                          DeliveryMethod.takeDelivery));
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }
}
