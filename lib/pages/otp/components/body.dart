import 'package:ecommerce/styles/constants.dart';
import 'package:ecommerce/styles/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../navHomeScreen.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(height: SizeConfig.screenHeight !* 0.05),
              Container(
                height:250,
                width: SizeConfig.screenWidth,
                child: SvgPicture.asset('assets/slider/OTP.svg'),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    text: '89934-45786  ',
                    style: TextStyle(fontSize: 20,fontFamily: 'RB',color: Color(0XFF000000)),
                    children: const <TextSpan>[
                      TextSpan(text: '  Change', style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0XFF6A8528))),
                    ],
                  ),

                ),
              ),
              SizedBox(height: 10,),
              buildTimer(),
              OtpForm(),
              SizedBox(height:10),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Masterpage()),);
                },
                child: Container(
                  width: SizeConfig.screenWidth!*0.9,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    // boxShadow: [
                    //   BoxShadow(color: Colors.green, spreadRadius: 3),
                    // ],
                    color: Color(0XFF6A8528),
                  ),
                  child:Center(child: Text('Verify',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffffffff),fontFamily:'RR'), )) ,
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  //
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Masterpage()),);

                },
                child: Container(
                  width: SizeConfig.screenWidth!*0.9,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    // boxShadow: [
                    //   BoxShadow(color: Colors.green, spreadRadius: 3),
                    // ],
                    color: Color(0XFFEAEDF2),
                  ),
                  child:Center(child: Text('Resend Code',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff4B4B4B),fontFamily:'RR'), )) ,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight !* 0.05),
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: RichText(
                  text: TextSpan(
                    text: 'Not received your code ?',
                    style: TextStyle(color: Color(0xff767676),fontSize: 14,fontFamily: 'RR'),
                    children: const <TextSpan>[
                      TextSpan(text: ' Resend Code', style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Color(0XFF6A8528))),
                    ],
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: 'Please enter the ',
            style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0XFF000000)),
            children: const <TextSpan>[
              TextSpan(text: 'OTP', style: TextStyle(fontSize: 16,fontFamily: 'RB',color: Color(0XFF000000))),
              TextSpan(text: ' sent to  ', style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0XFF000000))),
            ],
          ),

        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color:Color(0XFF6A8528)),
          ),
        ),
      ],
    );
  }
}
