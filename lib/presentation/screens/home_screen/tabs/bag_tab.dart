import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/bag_tab_widgets/bill_details_section.dart';
import 'widgets/bag_tab_widgets/cart_chat_widget.dart';
import 'widgets/bag_tab_widgets/coupon_applied_chat.dart';
import 'widgets/bag_tab_widgets/coupon_chat_section.dart';
import 'widgets/bag_tab_widgets/delivery_method.dart';
import 'widgets/bag_tab_widgets/select_time_slot.dart';

class BagTab extends StatelessWidget {
  const BagTab({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> bagChatItems = [
      BillDetailsSectionChat(visible: true),
      SelectTimeSlot(
        visible: true,
        isSelected: false,
      ),
      const SelectedDeliverymethod(),
      const DeliveryMethodChat(),
      const CouponAppliedChatWidget(),
      const ProceedWithoutCoupon(),
      const CouponChatSection(isCouponApplied: false),
      const CartChatWidget(),
    ];
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
            child: BlocBuilder<BagTabBloc, BagTabState>(
              builder: (context, state) {
                return ListView.separated(
                  reverse: true,
                  itemBuilder: (context, index) {
                    return bagChatItems[index];
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 5,
                    );
                  },
                  itemCount: bagChatItems.length,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class SelectedDeliverymethod extends StatelessWidget {
  const SelectedDeliverymethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BagTabBloc, BagTabState, DeliveryMethod?>(
      selector: (state) {
        return state.deliveryMethod;
      },
      builder: (context, deliveryMethod) {
        return Visibility(
          visible: deliveryMethod != null,
          child: ChatBubble(
            delivered: true,
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                deliveryMethod == DeliveryMethod.homeDelivery
                    ? 'I prefer home delivery'
                    : 'I prefer take away',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        );
      },
    );
  }
}

class ProceedWithoutCoupon extends StatelessWidget {
  const ProceedWithoutCoupon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BagTabBloc, BagTabState, bool>(
      selector: (state) {
        return state.withoutCoupon;
      },
      builder: (context, visible) {
        return Visibility(
          visible: visible,
          child: const ChatBubble(
            delivered: true,
            content: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Proceed without coupon',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        );
      },
    );
  }
}
