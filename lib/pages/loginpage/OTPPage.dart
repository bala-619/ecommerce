import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/pages/HomePage/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../navHomeScreen.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final _text = TextEditingController();
  final _text1 = TextEditingController();
  bool _validate = false;
  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }
  late  double width,height,width2,height2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    height2=height-16;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0Xffffffff),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height:250,
                width: 1000,
                child: SvgPicture.asset('assets/slider/OTP.svg'),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: AlignmentDirectional.centerStart,
                padding: EdgeInsets.only(left: 30),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
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
                    Container(
                        child: RichText(
                          text: TextSpan(
                            text: 'Please enter the ',
                            style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0XFF000000)),
                            children: const <TextSpan>[
                              TextSpan(text: 'OTP', style: TextStyle(fontSize: 16,fontFamily: 'RB',color: Color(0XFF000000))),
                              TextSpan(text: ' sent to', style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0XFF000000))),
                            ],
                          ),

                        ),//Text('Sign up with your mobile number to get start,',style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0XFF000000)),)
                    ),
                  ],
                ) ,
              ),
              SizedBox(height: 20,),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 12, right: 25, top:10),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: _text,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style:TextStyle(fontSize: 14,fontFamily:'RR',color:Color(0XFF000000),letterSpacing: 2.0,),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.black)
                          ),
                          border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.white)
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30.0),
                          ),

                          hintText: 'Enter Email / Phone Number',
                          errorStyle: TextStyle(fontSize: 14,fontFamily:'RR',color:Color(0XFFBCBBCD),),
                          contentPadding:EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                          hintStyle:TextStyle(fontSize: 14,fontFamily:'RR',color:Color(0XFFBCBBCD),),
                          errorText: _validate ? 'Value Can\'t Be Empty' : null,
                        ),
                        // inputFormatters: [
                        //   FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                        //   LengthLimitingTextInputFormatter(10),
                        // ],
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Masterpage()),);


                },
                child: Container(
                  width: width*0.9,
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
                  width: width*0.9,
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
              Spacer(),
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: RichText(
                  text: TextSpan(
                    text: 'Not received your code ?',
                    style: TextStyle(color: Color(0xff767676),fontSize: 14,fontFamily: 'RR'),
                    children: const <TextSpan>[
                      TextSpan(text: 'Resend Code', style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Color(0XFF6A8528))),
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
}
