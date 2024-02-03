import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smile_shope/layout/homeScreen.dart';
import 'package:smile_shope/screens/onboarding/onboarding.dart';
import 'package:smile_shope/screens/splash/splash.dart';
import 'package:smile_shope/shared/networks/local/Cache_Helper.dart';

// int? initscreen = 0;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
  // SharedPreferences preferences = await SharedPreferences.getInstance();
  // initscreen = preferences.getInt('initScreen');
  // await preferences.setInt('initScreen', 1);
  // WidgetsFlutterBinding.ensureInitialized();
  // await CashHelper.init();

  runApp(SmileShope());
}

class SmileShope extends StatelessWidget {
  const SmileShope({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        "/": (context) => const SplashSreen(),
        "/onboard": (context) => onBoardingScreen(),
        "/home": (context) => SmileShopeHomeScreen()
      },
      //  onBoardingScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.red, // تعيين اللون الافتراضي
        textTheme: const TextTheme(
          bodySmall: TextStyle(
              fontSize: 20, color: Colors.black), // تعيين حجم الخط الافتراضي
          bodyMedium:
              TextStyle(fontSize: 25, color: Colors.black), // حجم خط آخر
          // textTheme: const TextTheme(
          //   bodySmall: TextStyle(color: Colors.black, fontSize: 25),
          // ),
        ),
      ),
    );
  }
}
