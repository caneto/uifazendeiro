import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/extensions/context_extension.dart';

import '../../../utils/styles/colors_app.dart';

class HomePage extends StatelessWidget {

  const HomePage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: SafeArea(
             child: Stack(
               children: [
                 SizedBox(
                  child: Image.asset('assets/images/fundohomepage.png'),
                 ),
                 Container(
                    padding: EdgeInsets.only(top: 150, left: 20, right: 20, bottom: context.height * .5),
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
                    ),
                 ),
              ]
             ),
           ),
       );
  }
}