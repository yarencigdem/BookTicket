import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String text;
  final String smallText;
  const AppDoubleTextWidget({super.key, required this.text, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Styles.headLineStyle2,),
        InkWell(
            onTap: (){
              print("bastın ");
            },
            child: Text(smallText,style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
      ],
    );
  }
}
