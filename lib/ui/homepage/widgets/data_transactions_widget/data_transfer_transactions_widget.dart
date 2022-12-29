import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/styles/text_styles.dart';

class DataTransferTransctionsWidget extends StatelessWidget {

  const DataTransferTransctionsWidget({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Container(
         padding: const EdgeInsets.all(2),
         margin: const EdgeInsets.only(bottom: 3, top: 3),
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(20),
         ),
         child: Column(
           children: [
             Row(
               children: [
                 Image.asset(
                  "assets/images/pessoa1.png",
                  height: 40,
                  width: 40,                  
                 ),
                 const SizedBox(
                     width: 12,
                 ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       'Transfer',
                       style: context.textStyles.textPrimaryFontMedium.copyWith(
                         color: Colors.black,
                         fontWeight: FontWeight.bold,
                         fontSize: 22,
                       ),
                     ),
                     Text(
                       'Yesterday',
                       style: context.textStyles.textPrimaryFontMedium.copyWith(
                         color: Colors.black38,
                         fontSize: 16,
                       ),
                     ),
                   ],
                 ),
                 Expanded(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       const SizedBox(width: 25,),
                       Text(
                         '- \$ 85.00',
                         style: context.textStyles.textPrimaryFontSemiBold.copyWith(
                           color: Colors.red,
                           fontSize: 22,
                         ),
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