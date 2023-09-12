import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_assignment_fengo/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlaceOrderOrCancelButtons extends StatelessWidget {
  const PlaceOrderOrCancelButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BagTabBloc, BagTabState, bool>(
      selector: (state) {
        return (state.deliveryMethod == DeliveryMethod.homeDelivery) ||
            (state.selectedTimeSlot != null) && !state.showInstructionTextField;
      },
      builder: (context, state) {
        return Visibility(
          visible: state,
          child: Column(
            children: [
              ChatBubble(
                isSender: false,
                isTransparant: true,
                content: CustomElevatedButton(
                  labelText: "Cancel",
                  backgroundColor: whiteBackgroundColor,
                  fontColor: customPrimaryColor,
                  onPressed: () {},
                ),
              ),
              ChatBubble(
                isSender: false,
                isTransparant: true,
                content: CustomElevatedButton(
                  labelText: "Place order",
                  backgroundColor: customPrimaryColor,
                  fontColor: textWhiteColor,
                  onPressed: () {},
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
