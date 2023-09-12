import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_assignment_fengo/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectTimeSlot extends StatelessWidget {
  const SelectTimeSlot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BagTabBloc, BagTabState, bool>(
      selector: (state) {
        return state.deliveryMethod == DeliveryMethod.takeDelivery;
      },
      builder: (context, visible) {
        return Visibility(
          visible: visible,
          child: Column(
            children: [
              const ChatBubble(
                isSender: false,
                content: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Please select a time slot to collect the products from our store',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              BlocSelector<BagTabBloc, BagTabState, bool>(
                selector: (state) {
                  return state.selectedTimeSlot == null;
                },
                builder: (context, state) {
                  return Visibility(
                    visible: state,
                    child: ChatBubble(
                      isSender: false,
                      isTransparant: true,
                      content: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        childAspectRatio: 3.5,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                        children: List.generate(
                          timeSlotList.length,
                          (index) {
                            return CustomElevatedButton(
                              labelTextFontSize: 12,
                              borderColor: transparent,
                              width: null,
                              labelText: timeSlotList[index],
                              backgroundColor: whiteBackgroundColor,
                              fontColor: textBlackColor,
                              onPressed: () {
                                context.read<BagTabBloc>().add(
                                    SelectTimeSlotEvent(
                                        timeSlot: timeSlotList[index]));
                              },
                            );
                          },
                        ),
                      ),
                    ),
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
