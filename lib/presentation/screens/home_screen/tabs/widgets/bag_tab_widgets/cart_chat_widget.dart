import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/core/constants/constants.dart';
import 'package:flutter_assignment_fengo/data/models/product_model.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/tabs/widgets/bag_tab_widgets/cart_item_tile.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/widgets/bubble_chat_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartChatWidget extends StatelessWidget {
  const CartChatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<BagTabBloc>().add(const GetAllCartItems());
    });

    return BlocBuilder<BagTabBloc, BagTabState>(
      builder: (context, state) {
        List<ProductModel> cartProduct = [];
        for (var x in state.cartItems.keys) {
          cartProduct.add(x);
        }
        return ChatBubble(
          content: Theme(
            data: Theme.of(context).copyWith(dividerColor: transparent),
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
                      '₹${(state.total).toStringAsFixed(2)}',
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
                      fontSize: 12, color: Color.fromARGB(255, 102, 101, 101)),
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
          tail: true,
          textStyle: const TextStyle(color: Colors.black, fontSize: 16),
        );
      },
    );
  }
}
