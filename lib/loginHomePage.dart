import 'package:ecommerce/loginpage/login.dart';
import 'package:ecommerce/loginpage/slider-swipeup.dart';
import 'package:ecommerce/widgets/size.dart';
import 'package:flutter/material.dart';
class LoginHomePage extends StatefulWidget {
  const LoginHomePage({Key? key}) : super(key: key);

  @override
  _LoginHomePageState createState() => _LoginHomePageState();
}

class _LoginHomePageState extends State<LoginHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            SlideSwipe(),
            loginPage()
          ],
        ),
      ),
    );
  }
}
