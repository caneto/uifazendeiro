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
                top: 110, left: 20, right: 20, bottom: context.height * .59),
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
                    margin: const EdgeInsets.only(bottom: 6),
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
                  const SizedBox(height: 35,),
                  Container(
                    margin: const EdgeInsets.only(bottom: 11),
                    height: 30,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        const SizedBox(
                           width: 25,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
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
                        ),
                        const SizedBox(
                           width: 11,
                        ),
                        Text('Income', style: context.textStyles.textPrimaryFontMedium.copyWith(
                          color: Colors.white,
                          fontSize: 18
                        )),
                        const SizedBox(
                           width: 59,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
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
                          child: Image.asset("assets/images/arrowup.png", ),
                        ),
                        const SizedBox(
                           width: 11,
                        ),
                        Text('Expenses', style: context.textStyles.textPrimaryFontMedium.copyWith(
                          color: Colors.white,
                          fontSize: 20
                        )),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 25,),
                      Expanded(
                        child: Text('\$ 1,840.00', style: context.textStyles.titleCardValueBoldWhite.copyWith(
                          fontSize: 20
                        )),
                      ),
                      Expanded(
                        child: Text('\$ 284.00', style: context.textStyles.titleCardValueBoldWhite.copyWith(
                          fontSize: 20
                        )),
                      ),
                      
                    ],
                  ),
                ],
              )
            ),
          );
  }
}