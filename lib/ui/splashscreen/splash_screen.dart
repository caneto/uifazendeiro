import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uifinanceiro/ui/onboarding/onboarding_page.dart';
import 'package:uifinanceiro/utils/styles/colors_app.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Timer(const Duration(seconds: 5),
          () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const OnboardingPage())));


    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                        ColorsApp.instance.green1,
                        ColorsApp.instance.green2,
                    ]
                  )
                ),
          child: Stack(
            children: const [
            Center(
              child: Text(
                'Ui Financeiro',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            )
          ]),
        ),
      );
    
  }
}


  