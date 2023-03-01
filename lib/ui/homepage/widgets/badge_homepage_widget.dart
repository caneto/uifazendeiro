import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/styles/colors_app.dart';

class BadgeHomepageWidget extends StatelessWidget {

  const BadgeHomepageWidget({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Container(
            padding: const EdgeInsets.only(
                top: 8, left: 332, right: 20, bottom: 10),
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
              child: badges.Badge(
                position: badges.BadgePosition.topEnd(top: -2, end: 1),
                shape: badges.BadgeShape.circle,
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