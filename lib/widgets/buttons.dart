import 'package:block_screenshot/core/constants/padding_constants.dart';
import 'package:block_screenshot/core/constants/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    this.onPressed,
    required this.child,
  }) : super(key: key);
  final VoidCallback? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style:  ButtonStyle(
        
        backgroundColor: MaterialStateProperty.all(ThemeColors.buttonColor),
        shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(ConstantPaddingValues.medium)))),
        padding:MaterialStateProperty.all(const EdgeInsets.all(ConstantPaddingValues.regular))),
      child: child,
      
    );
  }
}
