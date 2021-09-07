import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/pages/HomePage/LandingPage.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/login/login-bg.jpg',
  'assets/login/login-1.jpg',
  'assets/login/login-2.jpg',
];
class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(item, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),

                ),
              ),
            ],
          )),
    ),
  ))
      .toList();
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
                        child: Column(
                          children: [
                            Expanded(
                              child: CarouselSlider(
                                items: imageSliders,
                                carouselController: _controller,
                                options: CarouselOptions(
                                    autoPlay: true,
                                    viewportFraction: 1,
                                    pageSnapping: false,
                                    enlargeCenterPage: true,
                                    aspectRatio: 2.0,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        _current = index;
                                      });
                                    }),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: imgList.asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () => _controller.animateToPage(entry.key),
                                  child: Container(
                                    width: 12.0,
                                    height: 12.0,
                                    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: (Theme.of(context).brightness == Brightness.dark
                                            ? Colors.white
                                            : Color(0XFF657D26))
                                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        alignment: AlignmentDirectional.centerStart,
                        padding: EdgeInsets.only(left: 30),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Text('Welcome,',style: TextStyle(fontSize: 20,fontFamily: 'RB',color: Color(0XFF000000)),)
                            ),
                            Container(
                                child: Text('Sign In to Continue,',style: TextStyle(fontSize: 16,fontFamily: 'RR',color: Color(0XFF000000)),)
                            ),
                          ],
                        ) ,
                      ),
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
                                  errorStyle: TextStyle(fontSize: 14,fontFamily:'RR',color:Color(0XFFBCBBCD),letterSpacing: 2.0,),
                                  contentPadding:EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                                  hintStyle:TextStyle(fontSize: 14,fontFamily:'RR',color:Color(0XFFBCBBCD),letterSpacing: 2.0,),
                                  errorText: _validate ? 'Value Can\'t Be Empty' : null,
                                ),
                                // inputFormatters: [
                                //   FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                                //   LengthLimitingTextInputFormatter(10),
                                // ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 12, right: 25, top:10),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: _text1,
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

                                  hintText: 'Enter Password',
                                  errorStyle: TextStyle(fontSize: 14,fontFamily:'RR',color:Color(0XFFBCBBCD),letterSpacing: 2.0,),
                                  contentPadding:EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                                  hintStyle:TextStyle(fontSize: 14,fontFamily:'RR',color:Color(0XFFBCBBCD),letterSpacing: 2.0,),
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
                                    TextSpan(text: ' E-Commerce', style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Color(0XFF6A8528))),
                                    TextSpan(text: ' Terms of Use and Privacy Policy', style: TextStyle(fontSize: 12,fontFamily: 'RI',color: Color(0xff767676)),),
                                  ],
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()),);


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
                          child:Center(child: Text('Login',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffffffff),fontFamily:'RR'), )) ,
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
                          child:Center(child: Text('Request',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff4B4B4B),fontFamily:'RR'), )) ,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.only(bottom: 30),
                        child: RichText(
                          text: TextSpan(
                            text: 'New to ',
                            style: TextStyle(color: Color(0xff767676),fontSize: 14,fontFamily: 'RR'),
                            children: const <TextSpan>[
                              TextSpan(text: ' E-Commerce ?', style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Color(0XFF6A8528))),
                              TextSpan(text: ' Create an account', style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0xff767676)),),
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
