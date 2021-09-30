import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/pages/HomePage/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../navHomeScreen.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({Key? key}) : super(key: key);
  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
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
               child: SvgPicture.asset('assets/slider/Enter pnone numner.svg'),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: AlignmentDirectional.centerStart,
                padding: EdgeInsets.only(left: 30),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Text('Look like you\'re new here!,',style: TextStyle(fontSize: 20,fontFamily: 'RB',color: Color(0XFF000000)),)
                    ),
                    SizedBox(height: 10,),
                    Container(
                        child: Text('Sign up with your mobile number to get start,',style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0XFF000000)),)
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
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        style:TextStyle(fontSize: 14,fontFamily:'RR',color:Color(0XFF000000),letterSpacing: 1.0,),
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
                    Container(
                      width: width*0.83,
                      child: RichText(
                        text: TextSpan(
                          text: 'By Continuing, you agree to ',
                          style: TextStyle(color: Color(0xff767676),fontSize: 12,fontFamily: 'RI'),
                          children: const <TextSpan>[
                            TextSpan(text: ' E-Commerce', style: TextStyle(fontSize: 14,fontFamily: 'RI',color: Color(0XFF6A8528))),
                            TextSpan(text: ' Terms of Use and Privacy Policy', style: TextStyle(fontSize: 12,fontFamily: 'RI',color: Color(0xff767676)),),
                          ],
                        ),

                      ),
                    ),
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
                  child:Center(child: Text('Continue',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffffffff),fontFamily:'RR'), )) ,
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
                  child:Center(child: Text('Exiting User? Log in',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff4B4B4B),fontFamily:'RR'), )) ,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
