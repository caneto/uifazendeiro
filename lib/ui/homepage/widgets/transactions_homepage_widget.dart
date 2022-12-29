import 'package:flutter/material.dart';
import 'package:uifinanceiro/ui/homepage/widgets/data_transactions_widget.dart/data_paypal_transctions_widget.dart';
import 'package:uifinanceiro/ui/homepage/widgets/data_transactions_widget.dart/data_transfer_transactions_widget.dart';
import 'package:uifinanceiro/ui/homepage/widgets/data_transactions_widget.dart/data_up_transctions_widget.dart';
import 'package:uifinanceiro/ui/homepage/widgets/data_transactions_widget.dart/data_youtube_transctions_widget.dart';
import 'package:uifinanceiro/utils/styles/text_styles.dart';

class TransactionsHomepageWidget extends StatelessWidget {

  const TransactionsHomepageWidget({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Container(
         padding: const EdgeInsets.only(
                   top: 280, left: 20, right: 20, bottom: 3),
         child: Column(
           children: [
             Row(
               children: [
                 Expanded(
                   child: Text('Transactions History', 
                               style: context.textStyles.textPrimaryFontSemiBold.copyWith(
                                   fontSize: 20
                               )),
                 ),
                 Text('See all', 
                      style: context.textStyles.textPrimaryFontRegular.copyWith(
                         fontSize: 18
                     )), 
               ],
             ),
             Expanded(
               child: GridView.count(
                crossAxisCount: 1,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                children: [
                  Column(
                    children: const [
                      DataUpTransctionsWidget(),
                      DataTransferTransctionsWidget(),
                      DataPayPalTransctionsWidget(),
                      DataYouTubeTransctionsWidget()
                    ],
                  ),
                ],
               ),
             ),
           ],
         ),
       );
  }
}