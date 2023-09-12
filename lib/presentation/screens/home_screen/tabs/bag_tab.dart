import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/bag_tab_widgets/add_instructions_section.dart';
import 'widgets/bag_tab_widgets/bill_details_section.dart';
import 'widgets/bag_tab_widgets/cart_chat_widget.dart';
import 'widgets/bag_tab_widgets/coupon_applied_chat.dart';
import 'widgets/bag_tab_widgets/coupon_chat_section.dart';
import 'widgets/bag_tab_widgets/delivery_method.dart';
import 'widgets/bag_tab_widgets/instruction_chat.dart';
import 'widgets/bag_tab_widgets/place_or_cancel_order.dart';
import 'widgets/bag_tab_widgets/proceed_without_coupon.dart';
import 'widgets/bag_tab_widgets/select_time_slot.dart';
import 'widgets/bag_tab_widgets/selected_delivery_method.dart';
import 'widgets/bag_tab_widgets/selected_time_slot.dart';

class BagTab extends StatelessWidget {
  const BagTab({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<BagTabBloc>().add(const GetAllCartItems());
    });
    Size size = MediaQuery.of(context).size;
    List<Widget> bagChatItems = [
      const PlaceOrderOrCancelButtons(),
      const InstructionChat(),
      const AddInstructionSection(),
      const BillDetailsSectionChat(),
      const SelectedTimeSlotWidget(),
      const SelectTimeSlot(),
      const SelectedDeliverymethod(),
      const DeliveryMethodChat(),
      const CouponAppliedChatWidget(),
      const ProceedWithoutCoupon(),
      const CouponChatSection(),
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
                if (state.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.cartItems.isEmpty) {
                  return const Center(
                    child: Text('Cart is Empty'),
                  );
                }
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
