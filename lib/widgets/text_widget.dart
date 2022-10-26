import 'package:block_screenshot/core/constants/common_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextWidgets extends StatelessWidget {
  const TextWidgets({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: CommonTextStyle.defaultTextStyle,textAlign: TextAlign.center,);
  }
}
