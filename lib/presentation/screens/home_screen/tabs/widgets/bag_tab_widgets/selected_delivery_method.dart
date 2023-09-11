import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
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

