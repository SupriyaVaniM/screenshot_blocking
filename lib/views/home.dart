import 'package:block_screenshot/core/constants/common_strings.dart';
import 'package:block_screenshot/core/constants/common_textstyle.dart';
import 'package:block_screenshot/core/constants/theme_colors.dart';
import 'package:block_screenshot/views/second_page.dart';
import 'package:block_screenshot/widgets/appbars.dart';
import 'package:block_screenshot/widgets/buttons.dart';
import 'package:block_screenshot/widgets/container_widget.dart';
import 'package:block_screenshot/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar:  const AppBars(title: TextWidgets(text:CommonStrings.title ,)),
      body: ContainerWidget(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: const TextWidgets(text: CommonStrings.info),
              ),
              SizedBox(height: 20,),
              Container(
                child: const TextWidgets(text: CommonStrings.tryScreenShot1),
              ),
               SizedBox(height: 20,),
               Buttons(child:  Text(CommonStrings.click,style: CommonTextStyle.buttonTextStyle,),onPressed: (){
                 Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondPage()),
          );
               },)
            ],
          ),
        ),
      ),
    
    );
  }
}
