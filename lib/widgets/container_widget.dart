import 'package:block_screenshot/core/constants/padding_constants.dart';
import 'package:flutter/material.dart';

import 'package:block_screenshot/core/constants/theme_colors.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
    required this.child,
  }) : super(key: key);
final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      padding: const EdgeInsets.all(ConstantPaddingValues.regular),
      decoration:const  BoxDecoration(
          gradient: LinearGradient(colors: ThemeColors.redGradient,begin: Alignment.topRight,end:Alignment.bottomLeft,)
          
         ),
    );
  }
}
