import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/dashed_divider.dart';

class BagTab extends StatelessWidget {
  const BagTab({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.height,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/background_chat.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                BubbleSpecialOne(
                  content: Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      textColor: textBlackColor,
                      collapsedTextColor: textBlackColor,
                      childrenPadding: EdgeInsets.symmetric(horizontal: 10),
                      title: Text(
                        'Cart(5)',
                        style: kBoldBlackTextStyle,
                      ),
                      children: [
                        dottedLine,
                        kHeightTen,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Grand Total',
                              style: kBoldBlackTextStyle,
                            ),
                            Text('234')
                          ],
                        ),
                        kHeightTen,
                        const Text(
                          'There might be a change in the final bill which will be generated from the shop',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 59, 59, 59)),
                        ),
                        kHeightTen,
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: CircleAvatar(),
                            ),
                            SizedBox(
                              width: size.width * 0.55,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Orange'),
                                  Text('23'),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('1kg'),
                                      SizedBox(
                                        width: size.width * 0.2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 25,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                color: customPrimaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            Text('1'),
                                            Container(
                                              height: 25,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                color: customPrimaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  color: Color(0xFFE4FFE6),
                  tail: true,
                  textStyle: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
