import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class LayoutBuilder1 extends StatelessWidget {
  const LayoutBuilder1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:
          (BuildContext context, BoxConstraints constraints) {
        return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
                (constraints.constrainWidth() / 15).floor(),
                    (index) => SizedBox(
                  width: AppLayout.getWidth(5),
                  height: AppLayout.getHeight(1),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color:
                      Colors.grey.shade300,
                    ),
                  ),
                )));
      },
    );
  }
}
