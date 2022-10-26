import 'package:block_screenshot/core/constants/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBars extends StatelessWidget implements PreferredSizeWidget{
  const AppBars({
    Key? key,
    required this.title,
    this.height = 48
  }) : super(key: key);
  final Widget? title;
  final double height;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ThemeColors.transparent,
      title: title,
      elevation: 0,
    );
  }
  
  @override
 
  Size get preferredSize => Size.fromHeight(height);
}
