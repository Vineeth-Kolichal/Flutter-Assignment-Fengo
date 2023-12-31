import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bold_text.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BillDetailsSectionChat extends StatelessWidget {
  const BillDetailsSectionChat({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocSelector<BagTabBloc, BagTabState, bool>(
      selector: (state) {
        return (state.deliveryMethod == DeliveryMethod.homeDelivery) ||
            (state.selectedTimeSlot != null);
      },
      builder: (context, visible) {
        return Visibility(
          visible: visible,
          child: ChatBubble(
              isSender: false,
              content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BoldText(
                      'Bill details',
                      fontSize: 20,
                    ),
                    kHeightTen,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const BoldText('ItemTotal'),
                        BlocBuilder<BagTabBloc, BagTabState>(
                          builder: (context, state) {
                            return BoldText(
                                '₹ ${(state.total).toStringAsFixed(2)}');
                          },
                        ),
                      ],
                    ),
                    kHeightTen,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Coupon discount',
                          style:
                              TextStyle(color: Color.fromARGB(255, 90, 90, 90)),
                        ),
                        BlocSelector<BagTabBloc, BagTabState, double>(
                          selector: (state) {
                            if (state.couponValue != null) {
                              return state.couponValue!;
                            } else {
                              return 0.0;
                            }
                          },
                          builder: (context, state) {
                            return Column(
                              children: [
                                BoldText(
                                  '- ₹${(state).toStringAsFixed(2)}',
                                  fontColor: customPrimaryColor,
                                ),
                              ],
                            );
                          },
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
                        BlocSelector<BagTabBloc, BagTabState, double>(
                          selector: (state) {
                            return state.total;
                          },
                          builder: (context, total) {
                            return BlocSelector<BagTabBloc, BagTabState,
                                double>(
                              selector: (state) {
                                if (state.couponValue != null) {
                                  return state.couponValue!;
                                }
                                return 0.0;
                              },
                              builder: (context, discount) {
                                return BoldText(
                                  (discount == 0.0)
                                      ? '₹ ${(total).toStringAsFixed(2)}'
                                      : '₹ ${(total - discount).toStringAsFixed(2)}',
                                  fontSize: 18,
                                  fontColor: customPrimaryColor,
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    kHeightTen,
                    dottedLine,
                    kHeightTen,
                    const Text(
                      'There might be a change in the the final bill which will be generated from the shop',
                      style: TextStyle(color: Color.fromARGB(255, 90, 90, 90)),
                    ),
                    kHeightTen,
                    dottedLine,
                    kHeightTen,
                    BlocSelector<BagTabBloc, BagTabState, bool>(
                      selector: (state) {
                        return state.instruction == null;
                      },
                      builder: (context, state) {
                        return Visibility(
                          visible: state,
                          child: TextButton(
                              onPressed: () {
                                context.read<BagTabBloc>().add(
                                    const ShowOrHideInstructionField(
                                        show: true));
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Add Instructions',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: textBlackColor),
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 12,
                                    color: textBlackColor,
                                  )
                                ],
                              )),
                        );
                      },
                    ),
                  ],
                ),
              )),
        );
      },
    );
  }
}
