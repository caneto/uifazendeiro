import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/extensions/context_extension.dart';

import '../../../utils/styles/colors_app.dart';

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
          Container(
            padding: EdgeInsets.only(
                top: 150, left: 20, right: 20, bottom: context.height * .5),
            child: Container(
              decoration: BoxDecoration(
                  color: ColorsApp.instance.greencard,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: ColorsApp.instance.greenlinear.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(2, 3),
                    )
                  ]),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 75, left: 322, right: 25, bottom: context.height * .80),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: ColorsApp.instance.greenfundo,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: ColorsApp.instance.greenfundo.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(2, 3),
                    )
                  ]),
              child: Badge(
                position: BadgePosition.topEnd(top: -2, end: 1),
                shape: BadgeShape.circle,
                badgeColor: Colors.orange,
                child: Image.asset(
                  'assets/images/bell.png',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
