import 'package:flutter/material.dart';
import 'package:uifinanceiro/ui/sign_up/page/sign_up_page.dart';
import 'package:uifinanceiro/ui/homepage/page/home_page.dart';
import 'package:uifinanceiro/ui/onboarding/onboarding_page.dart';
import 'package:uifinanceiro/ui/splashscreen/splash_screen.dart';
import 'package:uifinanceiro/ui/statistic/page/statistics_page.dart';

import 'creditcard/credit_card_page.dart';

class UiFinanceiro extends StatelessWidget {
  const UiFinanceiro({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: const SplashScreen(),
    routes: {
        '/': (context) => const SplashScreen(),
        'onboardingPage': (context) => const OnboardingPage(),
        'homePage': (context) => const HomePage(),
        'statisticsPage': (context) => const StatisticsPage(),
        'creditCardPage':(context) => const CreditCardPage(),
        'createaccout': (context) => const SignUpPage()
      },
    );
  }
}