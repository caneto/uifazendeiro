import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/styles/colors_app.dart';

class SendAgainHomepageWidget extends StatelessWidget {

  const SendAgainHomepageWidget({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return 
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    for (int i = 1; i < 6; i++)
                    Container(
                        padding: const EdgeInsets.all(7),
                        margin: const EdgeInsets.all(9),
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/pessoa$i.png')),
                        borderRadius: BorderRadius.circular(90),
                        boxShadow:  [
                          BoxShadow(
                            color: ColorsApp.instance.green1.withOpacity(0.3),
                            blurRadius: 0,
                            spreadRadius: 4,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}