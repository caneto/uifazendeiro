import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/extensions/context_extension.dart';
import 'package:uifinanceiro/utils/styles/colors_app.dart';

class BadgeHomepageWidget extends StatelessWidget {

  const BadgeHomepageWidget({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Container(
            padding: EdgeInsets.only(
                top: 20, left: 322, right: 25, bottom: context.height * .30),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: ColorsApp.instance.greenfundo,
                  borderRadius: BorderRadius.circular(5),
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
                badgeColor: ColorsApp.instance.orangeBadge,
                child: Image.asset(
                  'assets/images/bell.png',
                  color: Colors.white,
                ),
              ),
            ),
          );
  }
}