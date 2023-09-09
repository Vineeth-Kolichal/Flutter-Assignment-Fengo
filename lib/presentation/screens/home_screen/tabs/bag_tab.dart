import 'dart:developer';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bloc/cart_bloc.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/data/models/product_model.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/dashed_divider.dart';
import 'package:flutter_assignment_fengo/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                CartChatWidget(),
                BubbleSpecialOne(
                    isSender: false,
                    content: Text('Add produts worth 25 to avail coup0n')),
                BubbleSpecialOne(
                    isSender: false,
                    color: Colors.transparent,
                    content: CustomElevatedButton(
                      labelText: 'Proceed',
                      backgroundColor: customPrimaryColor,
                      fontColor: kWhiteTextColor,
                      onPressed: () {},
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CartChatWidget extends StatelessWidget {
  const CartChatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<CartBloc>().add(const GetAllCart());
    });

    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        List<ProductModel> cartProduct = [];
        for (var x in state.cartItems.keys) {
          cartProduct.add(x);
        }
        return BubbleSpecialOne(
          content: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              textColor: textBlackColor,
              collapsedTextColor: textBlackColor,
              childrenPadding: const EdgeInsets.symmetric(horizontal: 10),
              title: Text(
                'Cart(${state.itemCount})',
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
                    Text(
                      '₹${state.total}',
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 33, 141, 36)),
                    )
                  ],
                ),
                kHeightTen,
                const Text(
                  'There might be a change in the final bill which will be generated from the shop',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 59, 59, 59)),
                ),
                kHeightTen,
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CartItemTile(
                        id: cartProduct[index].id,
                        itemName: cartProduct[index].productName,
                        price: cartProduct[index].price,
                        quantity: cartProduct[index].quanity,
                        count: state.cartItems[cartProduct[index]]!,
                        imagePath: cartProduct[index].images[0],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return kHeightTen;
                    },
                    itemCount: cartProduct.length),
                kHeightTen,
                dottedLine,
                kHeightTen,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Add More Items'),
                    Icon(
                      Icons.add,
                      size: 15,
                      color: Colors.grey,
                    )
                  ],
                )
              ],
            ),
          ),
          color: const Color(0xFFE4FFE6),
          tail: true,
          textStyle: const TextStyle(color: Colors.black, fontSize: 16),
        );
      },
    );
  }
}

class CartItemTile extends StatelessWidget {
  const CartItemTile({
    super.key,
    required this.itemName,
    required this.price,
    required this.quantity,
    required this.count,
    required this.imagePath,
    required this.id,
  });

  final String itemName;
  final double price;
  final String quantity;
  final int count;
  final String imagePath;
  final int id;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(
              imagePath,
            ),
          ),
        ),
        SizedBox(
          width: size.width * 0.45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemName,
                style: const TextStyle(fontWeight: FontWeight.w500),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '₹$price',
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    quantity,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 90, 89, 89)),
                  ),
                  SizedBox(
                    width: size.width * 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MiniButtonWidget(
                          isDeleteButton: count <= 1,
                          onPressed: () {
                            if (count > 1) {
                              context.read<CartBloc>().add(Remove(id));
                            }
                          },
                          icon: Icons.remove,
                        ),
                        Text('$count'),
                        MiniButtonWidget(
                          onPressed: () {
                            context.read<CartBloc>().add(Add(id));
                          },
                          icon: Icons.add,
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
    );
  }
}

class MiniButtonWidget extends StatelessWidget {
  const MiniButtonWidget({
    super.key,
    required this.icon,
    required this.onPressed,
    this.isDeleteButton = false,
  });
  final IconData icon;
  final Function() onPressed;
  final bool isDeleteButton;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: customPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Icon(
            isDeleteButton ? Icons.delete : icon,
            color: kWhiteTextColor,
            size: 17,
          ),
        ),
      ),
    );
  }
}
