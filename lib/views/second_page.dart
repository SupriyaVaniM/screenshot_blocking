import 'package:block_screenshot/core/constants/common_strings.dart';
import 'package:block_screenshot/core/constants/common_textstyle.dart';
import 'package:block_screenshot/views/home.dart';
import 'package:block_screenshot/views/third_page.dart';
import 'package:block_screenshot/widgets/appbars.dart';
import 'package:block_screenshot/widgets/buttons.dart';
import 'package:block_screenshot/widgets/container_widget.dart';
import 'package:block_screenshot/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var secureScreenShotChannel = const MethodChannel('secureScreenshotChannel');

  Future<void> _secureScreen() async {
  
        await secureScreenShotChannel.invokeMethod("secureScreen");
        print("screen secured");

  }

  Future<void> _unSecureScreen() async {
      await secureScreenShotChannel.invokeMethod("unSecureScreen");
        print("screen unSecured");}

  @override
  void initState() {
    _secureScreen();
    super.initState();
   
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBodyBehindAppBar: true,
       appBar:  const AppBars(title: TextWidgets(text:CommonStrings.title ,)),
      body: ContainerWidget(
        child: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           
              Container(
                child: const TextWidgets(text: CommonStrings.thisIs),
              ),
                SizedBox(height: 20,),
              Container(
                child: const TextWidgets(text: CommonStrings.tryScreenShot1),
              ),
            SizedBox(height: 20,),
               Buttons(child:  Text(CommonStrings.click1,style: CommonTextStyle.buttonTextStyle,),onPressed: (){
                _unSecureScreen();
                 Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
          );
               },),
                SizedBox(height: 20,),
               Buttons(child:  Text(CommonStrings.click2,style: CommonTextStyle.buttonTextStyle,),onPressed: (){
                _unSecureScreen();
                 Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ThirdPage()),
          );
               },),
            ],
          ),
        ),
      ),
      
    );
  }
}
