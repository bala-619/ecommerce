import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/widgets/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final List<String> imgList = [
  'assets/slider/flash-slider-01.svg',
];
class SlideSwipe extends StatefulWidget {
  const SlideSwipe({Key? key}) : super(key: key);

  @override
  _SlideSwipeState createState() => _SlideSwipeState();
}

class _SlideSwipeState extends State<SlideSwipe> {
  @override
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
    child: Container(

      margin: EdgeInsets.all(0.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              SvgPicture.asset(item, fit: BoxFit.cover,width: SizeConfig.screenWidth,height:SizeConfig.screenHeight!*0.35,),
              Positioned(
                bottom: 10.0,
              //  left: 20.0,
             //   right: 20.0,
                // width: SizeConfig.screenWidth,
                child: Container(
                  width: SizeConfig.screenWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: SizeConfig.screenWidth,
                       /* padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),*/
                        child: Text(
                          'E-COMMERCE SALE',
                          style: TextStyle(
                            color: Color(0XFF00EAFF),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RR'
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        width: SizeConfig.screenWidth,
                      /*  padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),*/
                        child: RichText(
                          text: TextSpan(
                            text: 'Lorem Ipsum is ',
                            style: TextStyle(color: Color(0xffffffff),fontSize: 16,fontFamily: 'RB',),
                            children: const <TextSpan>[
                              TextSpan(text: 'Simply ', style: TextStyle(fontSize: 16,fontFamily: 'RB',color: Colors.yellow)),
                              TextSpan(text: 'dummy Text of the printing and typing industry.', style: TextStyle(fontSize: 16,fontFamily: 'RB')),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
              /*Positioned(
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
              ),*/
            ],
          )),
    ),
  ))
      .toList();
  late  double width,height,width2,height2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    height2=height-16;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0Xff7351FF),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height:height*0.7,
                width: width,
                child: Column(
                  children: [
                    Expanded(
                      child: CarouselSlider(
                        items: imageSliders,
                        carouselController: _controller,
                        options: CarouselOptions(
                          height: height*0.7,
                            autoPlay: true,
                            viewportFraction: 2,
                            pageSnapping: false,
                            enlargeCenterPage: false,
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
                                    : Color(0XFFFFFFFF))
                                    .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),

              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  color: Color(0XFF00EAFF),
                ),
                child:Icon(Icons.keyboard_arrow_up,size: 40,color: Color(0xff3204C4),) ,
              ),
              SizedBox(height: 10,),
              Container(
               child:Text('Swipe Up to Login',
                  style: TextStyle(
                      color: Color(0XFFffffff),
                      fontSize: 16.0,
                      fontFamily: 'RR'
                  ),
                )
              ),
              Spacer(),
              Container(

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text('(c) 2021. All Rights Reserved. Design By Scutisoft   ',
                      style: TextStyle(fontSize: 12,color:Color(0xffffffff), fontFamily:'RR'),textAlign: TextAlign.center, )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



