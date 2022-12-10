import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/extensions/context_extension.dart';
import 'package:uifinanceiro/utils/styles/colors_app.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Timer(const Duration(seconds: 5),
          () => context.pushReplacementNamed('onboardingPage'));

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


  