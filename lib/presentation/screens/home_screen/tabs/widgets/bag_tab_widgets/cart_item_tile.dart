
import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/cart_bloc/cart_bloc.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/tabs/widgets/bag_tab_widgets/mini_button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        Flexible(
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
                        color: Color.fromARGB(255, 102, 101, 101)),
                  ),
                  SizedBox(
                    width: 80,
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

