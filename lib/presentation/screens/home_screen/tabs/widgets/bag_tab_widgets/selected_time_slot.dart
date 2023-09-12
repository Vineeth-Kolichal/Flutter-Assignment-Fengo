import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'text_chat_content.dart';

class SelectedTimeSlotWidget extends StatelessWidget {
  const SelectedTimeSlotWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BagTabBloc, BagTabState, String?>(
      selector: (state) {
        return state.selectedTimeSlot;
      },
      builder: (context, state) {
        return Visibility(
            visible: state != null,
            child: TextChatContent(
              onpressed: () {
                context.read<BagTabBloc>().add(const EditTimeSlot());
              },
              message: '$state',
            ));
      },
    );
  }
}
