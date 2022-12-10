import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:uifinanceiro/utils/extensions/context_extension.dart';
import 'package:uifinanceiro/utils/styles/colors_app.dart';

class NavBarCustom extends StatelessWidget {
  const NavBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 50,
      color: ColorsApp.instance.green2,
      onTap: (index) {
        print(index);
        if(index == 1) {
           context.pushNamed('statisticsPage');
        }
      },
      backgroundColor: Colors.white,
      items: [
        Image.asset('assets/images/home.png', color: Colors.white,),
        Image.asset('assets/images/bar-chart.png', color: Colors.white ),
        const Icon(CupertinoIcons.plus, color: Colors.white,),
        Image.asset('assets/images/wallet.png', color: Colors.white ),
        Image.asset('assets/images/user.png', color: Colors.white ),
      ],
    );
  }
}
