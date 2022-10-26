import 'package:block_screenshot/core/constants/common_strings.dart';
import 'package:block_screenshot/core/constants/common_textstyle.dart';
import 'package:block_screenshot/views/home.dart';
import 'package:block_screenshot/views/second_page.dart';
import 'package:block_screenshot/widgets/appbars.dart';
import 'package:block_screenshot/widgets/buttons.dart';
import 'package:block_screenshot/widgets/container_widget.dart';
import 'package:block_screenshot/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBodyBehindAppBar: true,
       appBar:  const AppBars(title: TextWidgets(text:CommonStrings.title ,)),
      body: ContainerWidget(
        child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Container(
                child: const TextWidgets(text: CommonStrings.thisIs3),
              ),
                SizedBox(height: 20,),
              Container(
                child: const TextWidgets(text: CommonStrings.tryScreenShot1),
              ),
               SizedBox(height: 20,),
               Buttons(child:  Text(CommonStrings.click3,style: CommonTextStyle.buttonTextStyle,),onPressed: (){
                 Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondPage()),
          );
               },),
                SizedBox(height: 20,),
               Buttons(child:  Text(CommonStrings.click1,style: CommonTextStyle.buttonTextStyle,),onPressed: (){
                 Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
          );
               },),
          ],
        )
      ),
      
    );
  }
}