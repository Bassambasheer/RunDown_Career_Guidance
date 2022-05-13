import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/core/controllers/Profile_bloc/profile_bloc.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Home_Page/mentor_home_page.dart';
import 'package:run_down/view/Home_Page/user_home_page.dart';
import 'package:run_down/view/Landing_Page/landing_page.dart';
import 'package:run_down/view/Log_In_page/login_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
      BlocProvider(create: (context) => ProfileBloc(),)
      ],   
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home: AnimatedSplashScreen(
            animationDuration: const Duration(seconds: 3),
            backgroundColor: white,
            splash: TextWidget(
                fam: GoogleFonts.bigShouldersDisplay().fontFamily,
                txt: "RunDown",
                size: 35,
                clr: redColorDark,
                weight: FontWeight.bold),
            nextScreen: LandingPage()),
      ),
    );
  }
}
