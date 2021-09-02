import 'package:carousel_slider/carousel_slider.dart';
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
  bool _validate = false;
  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0Xffffffff),
          body: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                              padding:  EdgeInsets.only(left: 25, right: 25, top:10),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: _text,
                                textAlignVertical: TextAlignVertical.center,
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                style:TextStyle(fontSize: 14,fontFamily:'RR',color:Colors.white,letterSpacing: 4.0,),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(color: Colors.black)
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide(color: Colors.white)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),

                                  hintText: 'Enter Your Phone Number',
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
                          ],
                        ),
                      )
                    ],
                  ),
          ),
        ),
    );
  }
}
