import 'dart:io';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/core/controllers/Profile_bloc/profile_bloc.dart';
import 'package:run_down/core/controllers/Sign_up_bloc/sign_up_bloc.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Landing_Page/landing_page.dart';
import 'package:run_down/view/Log_In_page/login_in_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProfileBloc(),
        ),
         BlocProvider(
          create: (context) => SignUpBloc(),
        )
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
            nextScreen: FutureBuilder(
                future: userExist(),
                builder: (context, asyncSnapshot) {
                 return asyncSnapshot.data == false ? LogInScreen() : LandingPage();
                })),
      ),
    );
  }
}

Future<bool?> userExist() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool("newUser");
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
