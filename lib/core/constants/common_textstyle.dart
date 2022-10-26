import 'package:block_screenshot/core/constants/theme_colors.dart';
import 'package:flutter/material.dart';

class CommonTextStyle{
  CommonTextStyle._();
  static TextStyle defaultTextStyle = const TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 25);
  static TextStyle buttonTextStyle = const TextStyle(color: ThemeColors.brownyPink,fontWeight: FontWeight.w400,fontSize: 25);
}