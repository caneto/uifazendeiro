import 'package:flutter/material.dart';
import 'package:uifinanceiro/ui/homepage/page/home_page.dart';
import 'package:uifinanceiro/utils/extensions/context_extension.dart';
import 'package:uifinanceiro/utils/styles/colors_app.dart';
import 'package:uifinanceiro/utils/styles/text_styles.dart';
import 'package:uifinanceiro/utils/widgets/button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: 
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 76),
                  padding: EdgeInsets.only(
                      top: context.height * .01),
                  child: Image.asset(
                    'assets/images/specular.png',
                    width: 277.05,
                    height: 411,
                  ),
                ),
                const SizedBox(height: 21,),
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
                const SizedBox(height: 22,),
                Center(
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
                        //widget.presenter.checkLogin();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => const HomePage()));
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
                const SizedBox(height: 17,),
                Text(
                  'Already Have Account? Log In',
                   style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                       color: ColorsApp.instance.green2,
                      ),  
                    ),
            ],
          ),
        )
      ),
    );
  }
}
