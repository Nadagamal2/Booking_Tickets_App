import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';

class AppColumLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;

  final String firstText;
  final String secondText;

  const AppColumLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle3.copyWith(color: Colors.black87),
        ),
        Gap(5),
        Text(
          secondText,
          style: Styles.headLineStyle4,
        ),
      ],
    );
  }
}
