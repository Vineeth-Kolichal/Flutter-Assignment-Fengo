import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddInstructionSection extends StatelessWidget {
  const AddInstructionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocSelector<BagTabBloc, BagTabState, bool>(
      selector: (state) {
        return state.showInstructionTextField;
      },
      builder: (context, state) {
        return Visibility(
          visible: state,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: whiteBackgroundColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextFormField(
                    controller:
                        context.read<BagTabBloc>().instructionController,
                    decoration: InputDecoration(
                        hintText: 'Add your instructions',
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ),
              ),
              kWidthFive,
              InkWell(
                onTap: () {
                  context.read<BagTabBloc>().add(AddInstructions(
                      instruction: context
                          .read<BagTabBloc>()
                          .instructionController
                          .text
                          .trim()));
                },
                child: const CircleAvatar(
                  child: Icon(Icons.send),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
