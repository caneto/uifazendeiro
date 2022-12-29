import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/extensions/context_extension.dart';
import 'package:uifinanceiro/utils/styles/colors_app.dart';
import 'package:uifinanceiro/utils/styles/text_styles.dart';
import 'package:uifinanceiro/utils/widgets/button.dart';

import '../../utils/widgets/multi_text_buttom.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            Expanded(
              flex: 2,
              child: Container(
                child: Image.asset(
                  'assets/images/specular.png',
                ),
              ),
            ),
            Text(
              'Spend Smarter',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: ColorsApp.instance.green2,
              ),
            ),
            Text(
              'Save More',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: ColorsApp.instance.green2,
              ),
            ),
            const SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.only(
                left: 32.0, 
                right: 32.0,
                top:12.0,
                bottom: 8.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                  begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                        ColorsApp.instance.greenlinear,
                        ColorsApp.instance.greenlinear2,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: ColorsApp.instance.greenlinear.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(2, 3),
                    )
                  ]
                ),
                child: Button(
                  height: context.height * .066,
                  widht: context.width * .9,
                  onPressed: () {
                    context.pushReplacementNamed('signin');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      disabledForegroundColor: Colors.transparent,
                      shadowColor: Colors.transparent
                  ),
                  labelStyle: context.textStyles.textStart,
                  label: 'Get Started',
                ),
              ),
            ),
            MultiTextButtom(
              onPressed: () {
                    context.pushReplacementNamed('signup');
              },
              children: [
                  Text(
                    'Already Have Account?  ',
                    style: TextStyles.instance.textSmall.copyWith(
                      color: ColorsApp.instance.greenlinear
                    ),  
                  ),
                  Text(
                    'Log In',
                    style: TextStyles.instance.textSmall.copyWith(
                      color: ColorsApp.instance.greenfundo
                    ),  
                  )   
                ]
            ),
            const SizedBox(height: 24,)
          ]
        ),
      ),
    );
  }
}
