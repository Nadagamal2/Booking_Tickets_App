import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText ;
  final String smallText;
  const AppDoubleText({Key? key, required this.bigText, required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: (){
            print('tapped');
          },
          child: Text(smallText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),),
        ),
      ],
    );
  }
}
