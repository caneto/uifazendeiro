import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {

  const StatisticsPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: const Text('Estatisticas', style: TextStyle(
              color: Colors.black
            ),),
            actions: [
                Image.asset(
                  'assets/images/vector.png',
                  color: Colors.black,
                ),
            ],
           ),
           body: Container(),
       );
  }
}