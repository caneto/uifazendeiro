import 'package:flutter/material.dart';

class MultiTextButtom extends StatelessWidget {

  final List<Text> children;
  final VoidCallback onPressed;

  const MultiTextButtom({ Key? key, required this.children, required this.onPressed }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return TextButton(
          onPressed: onPressed,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: children
          )
        );
    }
}