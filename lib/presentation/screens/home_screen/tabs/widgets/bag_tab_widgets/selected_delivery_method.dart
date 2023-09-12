import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/tabs/widgets/bag_tab_widgets/text_chat_content.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          child: TextChatContent(
            onpressed: () {
              context.read<BagTabBloc>().add(const EditDeliveryMethod());
            },
            message: deliveryMethod == DeliveryMethod.homeDelivery
                ? 'I prefer home delivery'
                : 'I prefer take away',
          ),
        );
      },
    );
  }
}
