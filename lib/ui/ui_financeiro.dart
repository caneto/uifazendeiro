import 'package:flutter/material.dart';
import 'package:uifinanceiro/ui/splashscreen/splash_screen.dart';

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
      home: const SplashScreen(),
    );
  }
}