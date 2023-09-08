import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/core/colors/colors.dart';
import 'package:flutter_assignment_fengo/presentation/routes/app_route_generate.dart';
import 'package:flutter_assignment_fengo/presentation/screens/success_screen/success_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(ZappyApp(
    appRouteGenerate: AppRouteGenerate(),
  ));
}

class ZappyApp extends StatelessWidget {
  const ZappyApp({super.key, required this.appRouteGenerate});
  final AppRouteGenerate appRouteGenerate;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: customPrimaryColor,
          fontFamily: GoogleFonts.poppins().fontFamily),
      debugShowCheckedModeBanner: false,
      //  home: SuccessScreen(),
      onGenerateRoute: appRouteGenerate.onGenerateRoute,
    );
  }
}
