import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/bag_tab_bloc/bag_tab_bloc.dart';
import 'package:flutter_assignment_fengo/business_logic/blocs/cart_bloc/cart_bloc.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/data/data_providers/cart_data_provider/cart_data_provider.dart';
import 'package:flutter_assignment_fengo/presentation/routes/app_route_generate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  CartDataProvider().initCart();
  runApp(ZappyApp(
    appRouteGenerate: AppRouteGenerate(),
  ));
}

class ZappyApp extends StatelessWidget {
  const ZappyApp({super.key, required this.appRouteGenerate});
  final AppRouteGenerate appRouteGenerate;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => CartBloc(),
        ),
        BlocProvider(
          create: (ctx) => BagTabBloc(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Color.fromARGB(255, 233, 233, 231),
            primarySwatch: customPrimaryColor,
            fontFamily: GoogleFonts.poppins().fontFamily),
        debugShowCheckedModeBanner: false,
        //  home: SuccessScreen(),
        onGenerateRoute: appRouteGenerate.onGenerateRoute,
      ),
    );
  }
}
