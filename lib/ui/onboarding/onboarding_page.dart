import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/styles/button_styles.dart';
import 'package:uifinanceiro/utils/styles/colors_app.dart';
import 'package:uifinanceiro/utils/styles/text_styles.dart';
import 'package:uifinanceiro/utils/widgets/button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .01),
              child: Image.asset(
                'assets/images/specular.png',
                width: 220,
                height: MediaQuery.of(context).size.height * .8,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .70),
                child: Column(children: [
                  Text(
                    'Spend Smarter',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: ColorsApp.instance.green2,
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Text(
                    'Save More',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: ColorsApp.instance.green2,
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * .10),
                child: Center(
                  child: Column(
                    children: [
                      Button(
                        height: MediaQuery.of(context).size.height * .066,
                        widht: MediaQuery.of(context).size.width * .9,
                        onPressed: () {
                          //widget.presenter.checkLogin();
                        },
                        style: context.buttonStyles.greenButton,
                        labelStyle: context.textStyles.textStart,
                        label: 'Get Started',
                      ),
                      const SizedBox(height: 3,),
                      const Text('Already Have Account? Log In'),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
