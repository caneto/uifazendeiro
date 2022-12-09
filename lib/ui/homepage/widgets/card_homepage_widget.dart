import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/extensions/context_extension.dart';
import 'package:uifinanceiro/utils/styles/colors_app.dart';
import 'package:uifinanceiro/utils/styles/text_styles.dart';

class CardHomepageWidget extends StatelessWidget {

  const CardHomepageWidget({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Container(
            padding: EdgeInsets.only(
                top: 150, left: 20, right: 20, bottom: context.height * .48),
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
                ]
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  Container(
                    height: 25,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        const SizedBox(
                           width: 25,
                        ),
                        Text('Total Balance', style: context.textStyles.titleCardWhite),
                        Image.asset('assets/images/chevrondown.png'),
                        const SizedBox(
                           width: 145,
                        ),
                        Image.asset('assets/images/dots3.png'),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      Text('\$ 2,548.00', style: context.textStyles.titleCardValueBoldWhite),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                         width: 25,
                         height: 95,
                      ),
                      Container(
                        padding: const EdgeInsets.all(11),
                        decoration: BoxDecoration(
                          color: ColorsApp.instance.greenfundo,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: ColorsApp.instance.greenfundo.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: const Offset(2, 3),
                            )
                          ]
                        ),
                        child: Image.asset("assets/images/arrowdown.png"),
                      )
                    ],
                  )
                ],
              )
            ),
          );
  }
}