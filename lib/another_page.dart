import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnotherPage extends StatefulWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  var secureScreenShotChannel = const MethodChannel('secureScreenshotChannel');

  Future<void> secureScreen(BuildContext context) async {
    final bool success =
        await secureScreenShotChannel.invokeMethod("secureScreen");

    if (success) {
      const snackBar = SnackBar(
        content: Text('screenShot blocked'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      print('screenshot blocked');
    }
  }

  Future<void> unSecureScreen() async =>
      await secureScreenShotChannel.invokeMethod("unSecureScreen");

  @override
  void initState() {
    secureScreen(context);
    super.initState();
  }

  @override
  void dispose() {
    unSecureScreen();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.pink,
          height: 140,
          width: double.infinity,
          child: const Text("try screenshot here"),
        ),
      ),
    );
  }
}
