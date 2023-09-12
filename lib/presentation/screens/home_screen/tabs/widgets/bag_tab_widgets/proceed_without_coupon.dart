import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/tabs/widgets/bag_tab_widgets/text_chat_content.dart';
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
          child: TextChatContent(
            message: 'Proceed without coupon',
            onpressed: () {
              context
                  .read<BagTabBloc>()
                  .add(const WithoutCoupon(withoutCoupon: false));
            },
          ),
        );
      },
    );
  }
}
