import 'package:flutter/material.dart';
import 'package:uifinanceiro/ui/homepage/widgets/badge_homepage_widget.dart';
import 'package:uifinanceiro/ui/homepage/widgets/card_homepage_widget.dart';
import 'package:uifinanceiro/ui/homepage/widgets/menu_drawer.dart';
//import 'package:uifinanceiro/ui/homepage/widgets/navbar_custom.dart';
import 'package:uifinanceiro/ui/homepage/widgets/send_again_homepage_widget.dart';
import 'package:uifinanceiro/ui/homepage/widgets/transactions_homepage_widget.dart';
import 'package:uifinanceiro/utils/extensions/context_extension.dart';
import 'package:uifinanceiro/utils/styles/text_styles.dart';
import 'package:uifinanceiro/utils/widgets/custom_bottom_app_bar.dart';

import '../../../utils/styles/colors_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
        backgroundColor: ColorsApp.instance.green2,
        title: const Text(
          'Financeiro',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          BadgeHomepageWidget(),
        ],
        flexibleSpace: Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorsApp.instance.greenlinear,
              ColorsApp.instance.greenlinear2,
            ],
          ),
        )),
      ),
      body: Stack(children: [
        SizedBox(
          child: Image.asset(
            'assets/images/fundohomepage.png',
          ),
        ),
        const CardHomepageWidget(),
        const TransactionsHomepageWidget(),
        Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 544, left: 20, right: 20, bottom: 10),
                child: Column(children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text('Send Again',
                            style: context.textStyles.textPrimaryFontSemiBold
                                .copyWith(fontSize: 20)),
                      ),
                      Text('See all',
                          style: context.textStyles.textPrimaryFontRegular
                              .copyWith(fontSize: 18)),
                    ],
                  ),
                  const SendAgainHomepageWidget()
                ]),
              ),
            ),
          ],
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsApp.instance.green,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(
        selectedItemColor: ColorsApp.instance.green,
        children: [
          CustomBottomAppBarItem(
              label: 'home',
              primaryIcon: Image.asset(
                'assets/images/home.png',
                color: ColorsApp.instance.green1,
                width: 24,
                height: 24,
              ),
              secondaryIcon: Image.asset(
                'assets/images/home.png',
                color: ColorsApp.instance.lightGrey,
                width: 24,
                height: 24,
              ),
              onPressed: () {}

              ///onPressed: () => pageController.jumpToPage(
              //  0,
              //),
              ),
          CustomBottomAppBarItem(
              label: 'stats',
              primaryIcon: Image.asset(
                'assets/images/bar-chart.png',
                color: ColorsApp.instance.green1,
                width: 24,
                height: 24,
              ),
              secondaryIcon: Image.asset(
                'assets/images/bar-chart.png',
                color: ColorsApp.instance.lightGrey,
                width: 24,
                height: 24,
              ),
              onPressed: () => context.pushNamed('statisticsPage'),
              //onPressed: () => pageController.jumpToPage(
              //  1,
              //),
              ),
          CustomBottomAppBarItem.empty(),
          CustomBottomAppBarItem(
              label: 'wallet',
              primaryIcon: Image.asset(
                'assets/images/wallet.png',
                color: ColorsApp.instance.green1,
                width: 24,
                height: 24,
              ),
              secondaryIcon: Image.asset(
                'assets/images/wallet.png',
                color: ColorsApp.instance.lightGrey,
                width: 24,
                height: 24,
              ),
              onPressed: () {}
              //onPressed: () => pageController.jumpToPage(
              //  2,
              //),
              ),
          CustomBottomAppBarItem(
              label: 'profile',
              primaryIcon: Image.asset(
                'assets/images/user.png',
                color: ColorsApp.instance.green1,
                width: 24,
                height: 24,
              ),
              secondaryIcon: Image.asset(
                'assets/images/user.png',
                color: ColorsApp.instance.lightGrey,
                width: 24,
                height: 24,
              ),
              onPressed: () {}
              //onPressed: () => pageController.jumpToPage(
              //  3,
              //),
              ),
        ],
      ),

      //bottomNavigationBar: const NavBarCustom(),
    );
  }
}
