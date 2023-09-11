import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProceedWithoutCoupon extends StatelessWidget {
  const ProceedWithoutCoupon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BagTabBloc, BagTabState, bool>(
      selector: (state) {
        return state.withoutCoupon && state.couponValue == null;
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
