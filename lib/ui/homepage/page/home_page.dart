import 'package:flutter/material.dart';
import 'package:uifinanceiro/ui/homepage/widgets/badge_homepage_widget.dart';
import 'package:uifinanceiro/ui/homepage/widgets/card_homepage_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          SizedBox(
            child: Image.asset('assets/images/fundohomepage.png'),
          ),
          const CardHomepageWidget(),
          const BadgeHomepageWidget(),
        ]),
      ),
    );
  }
}
