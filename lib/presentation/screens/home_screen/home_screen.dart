import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/tabs/bag_tab.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/tabs/items_tab.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/tabs/shop_tab.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/custom_tab_head_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/zappy_logo.png',
            height: 45,
          ),
          bottom: const TabBar(tabs: [
            CustomTaHeadbWidget(
              icon: Iconsax.shop,
              label: 'Shop',
            ),
            CustomTaHeadbWidget(
              icon: Iconsax.bag,
              label: 'Item',
            ),
            CustomTaHeadbWidget(
              icon: Iconsax.bag_2,
              label: 'bag',
            ),
          ]),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Stack(
                  children: [
                    const Icon(
                      Iconsax.notification,
                      size: 27,
                    ),
                    Positioned(
                      right: 0,
                      top: -3,
                      child: Container(
                        // height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: yellowColor,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            '5',
                            style:
                                TextStyle(fontSize: 12, color: textBlackColor),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
          ],
        ),
        body: const TabBarView(children: [ShopTab(), ItemsTab(), BagTab()]),
      ),
    );
  }
}
