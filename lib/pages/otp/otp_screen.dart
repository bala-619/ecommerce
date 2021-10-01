import 'package:ecommerce/styles/size.dart';
import 'package:flutter/material.dart';


import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("OTP Verification"),
        // ),
        body: Body(),
      ),
    );
  }
}
