import 'package:flutter/material.dart';
import 'package:uifinanceiro/utils/styles/colors_app.dart';
import 'package:uifinanceiro/utils/styles/text_styles.dart';

class DataYouTubeTransctionsWidget extends StatelessWidget {

  const DataYouTubeTransctionsWidget({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Container(
         padding: const EdgeInsets.all(3),
         margin: const EdgeInsets.only(bottom: 5, top: 5),
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(20),
         ),
         child: Column(
           children: [
             Row(
               children: [
                 Image.asset(
                   "assets/images/youtube.png",
                   height: 35,
                   width: 35,
                 ),
                 const SizedBox(
                     width: 18,
                 ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       'YouTube',
                       style: context.textStyles.textPrimaryFontMedium.copyWith(
                         color: Colors.black,
                         fontWeight:FontWeight.bold,
                         fontSize: 20,
                       ),
                     ),
                     Text(
                       'Jan 16, 2022',
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
                         '- \$ 11.99',
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