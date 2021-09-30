import 'package:ecommerce/notifiers/themeNotifier.dart';
import 'package:ecommerce/styles/constants.dart';
import 'package:ecommerce/styles/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class NotificationBar extends StatefulWidget {
  VoidCallback voidCallback;
  NotificationBar({required this.voidCallback});

  @override
  _NotificationBarState createState() => _NotificationBarState();
}

class _NotificationBarState extends State<NotificationBar>with TickerProviderStateMixin {
  @override
  late TabController _tabController;
  late  double width,height,width2,height2;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3,  vsync: this);
  }
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    height2=height-16;
    return SafeArea(
      child:Consumer<ThemeNotifier>(
        builder:(ctx,tn,child)=> Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            height: height,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Container(
                  height: 106,
                //  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                      color: tn.primaryColor
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(onPressed: (){
                              widget.voidCallback();
                              // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ThemeSettings()));
                            },
                              icon: Image.asset('assets/menu.png',width:20,),
                              //   icon: Icon(Icons.menu,color: Colors.white,size: 30,),
                            ),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child:   Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: Image.asset('assets/logo.png',width:28,),
                                        ),
                                        Text('Fresh & Eat',style: TextStyle(fontFamily: 'RI',fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)
                                      ],
                                    )
                                ),
                                Stack(
                                  children: [
                                    GestureDetector(
                                      onTap : ()
                                      {
                                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Mycart()),);
                                      },
                                      child: Container(
                                          width: 23,
                                          child: Image.asset('assets/notification.png',width: 30,fit: BoxFit.cover,)
                                      ),
                                    ),
                                    Positioned(
                                        right: 0,
                                        top: -0.7,
                                        child: Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle
                                          ),
                                          child: Center(
                                            child: Text('2', style:TextStyle(color: Colors.white,fontSize: 10,fontFamily:'RR',)),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  width:30 ,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                    child: Image.asset('assets/profile.png',)
                                ),
                                SizedBox(width: 10,),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25,right: 25),
                        child: TabBar(
                            controller: _tabController,
                            // give the indicator a decoration (color and border radius)
                            indicatorPadding: EdgeInsets.only(top: 45),
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0,),
                              color: tn.primaryColor1,
                            ),
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicatorWeight: 6,
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.white,
                            unselectedLabelStyle: TextStyle(fontSize: 14,fontFamily: 'RR'),
                            labelStyle: TextStyle(fontSize: 14,fontFamily: 'RR'),
                            tabs: [
                              Tab(text:"Resend"),
                              Tab(text:"Opened"),
                              Tab(text:"View all"),
                            ]
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: SizeConfig.screenHeight!-170,
                  width: SizeConfig.screenWidth!*1,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Align(
                        alignment:Alignment.topCenter,
                        child: Container(
                          width: SizeConfig.screenWidth!*1,
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Container(
                                   margin: EdgeInsets.only(bottom: 15,left: 20,right: 20),
                                   child: Row(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Text('Notifications  (12)',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Color(0xff2E2E2D),fontWeight: FontWeight.w600),),
                                       Text('View all',style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0xffA1A1A1),),)
                                     ],
                                   ),
                                 ),
                              Container(
                                height: SizeConfig.screenHeight!-230,
                                width: SizeConfig.screenWidth!*1,
                                // padding: EdgeInsets.only(left: 10,right: 10),
                                child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: 20,
                                      physics: BouncingScrollPhysics(),
                                      itemBuilder: (ctx,i){
                                        return Container(
                                          margin: EdgeInsets.only(bottom: 15,left: 20,right: 20),
                                          width: SizeConfig.screenWidth!*1,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(color: Color(0XFFF5F5F5)),
                                            boxShadow: [
                                              BoxShadow(color: Colors.black26, spreadRadius: 0,blurRadius: 9,
                                                offset: Offset(
                                                  0.0, // Move to right 10  horizontally
                                                  5.0, // Move to bottom 10 Vertically),
                                                ),),
                                            ],
                                            color: Color(0XFFffffff),
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                               Container(
                                                 child: Row(
                                                   children: [
                                                     Container(
                                                       width: 40,
                                                       height: 40,
                                                       margin: EdgeInsets.only(left: 10),
                                                       decoration: BoxDecoration(
                                                         borderRadius: BorderRadius.circular(50),
                                                         color: Color(0XFFDCE6DB),
                                                       ),
                                                       alignment: Alignment.center,
                                                       child: Image.asset("assets/mail.png",width: 20,),
                                                     ),
                                                     Container(
                                                       margin: EdgeInsets.only(left: 10),
                                                       child: Column(
                                                         mainAxisAlignment: MainAxisAlignment.center,
                                                         crossAxisAlignment: CrossAxisAlignment.start,
                                                         children: [
                                                           Text('Our shop lunched padi',style: TextStyle(fontSize: 16,fontFamily: 'RR',color: Color(0xff4C7843),fontWeight: FontWeight.w600),),
                                                           SizedBox(height: 5,),
                                                           Text('Your eligible this offer 3days only',style: TextStyle(fontSize: 13,fontFamily: 'RI',color: Color(0xffA1A1A1),),)
                                                         ],
                                                       ),
                                                     ),
                                                   ],
                                                 ),
                                               ),
                                              Spacer(),
                                              Container(
                                                margin: EdgeInsets.only(right: 8,top: 10,bottom: 5),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Opacity(
                                                        opacity:0.5,
                                                        child: Image.asset("assets/menu-circle.png",width: 20,)),
                                                    Text('5 Min Ago',style: TextStyle(fontSize: 13,fontFamily: 'RR',color: Color(0xffA1A1A1),),)
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment:Alignment.topCenter,
                        child: Container(
                          width: SizeConfig.screenWidth!*1,
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Container(
                                margin: EdgeInsets.only(bottom: 15,left: 20,right: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Notifications  (12)',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Color(0xff2E2E2D),fontWeight: FontWeight.w600),),
                                    Text('View all',style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0xffA1A1A1),),)
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.screenHeight!-230,
                                width: SizeConfig.screenWidth!*1,
                                // padding: EdgeInsets.only(left: 10,right: 10),
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 20,
                                  physics: BouncingScrollPhysics(),
                                  itemBuilder: (ctx,i){
                                    return Container(
                                      margin: EdgeInsets.only(bottom: 15,left: 20,right: 20),
                                      width: SizeConfig.screenWidth!*1,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Color(0XFFF5F5F5)),
                                        boxShadow: [
                                          BoxShadow(color: Colors.black26, spreadRadius: 0,blurRadius: 9,
                                            offset: Offset(
                                              0.0, // Move to right 10  horizontally
                                              5.0, // Move to bottom 10 Vertically),
                                            ),),
                                        ],
                                        color: Color(0XFFffffff),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 40,
                                                  margin: EdgeInsets.only(left: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(50),
                                                    color: Color(0XFFDCE6DB),
                                                  ),
                                                  alignment: Alignment.center,
                                                  child: Image.asset("assets/mail.png",width: 20,),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 10),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('Our shop lunched padi',style: TextStyle(fontSize: 16,fontFamily: 'RR',color: Color(0xff4C7843),fontWeight: FontWeight.w600),),
                                                      SizedBox(height: 5,),
                                                      Text('Your eligible this offer 3days only',style: TextStyle(fontSize: 13,fontFamily: 'RI',color: Color(0xffA1A1A1),),)
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            margin: EdgeInsets.only(right: 8,top: 10,bottom: 5),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Opacity(
                                                    opacity:0.5,
                                                    child: Image.asset("assets/menu-circle.png",width: 20,)),
                                                Text('5 Min Ago',style: TextStyle(fontSize: 13,fontFamily: 'RR',color: Color(0xffA1A1A1),),)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment:Alignment.topCenter,
                        child: Container(
                          width: SizeConfig.screenWidth!*1,
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Container(
                                margin: EdgeInsets.only(bottom: 15,left: 20,right: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Notifications  (12)',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Color(0xff2E2E2D),fontWeight: FontWeight.w600),),
                                    Text('View all',style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0xffA1A1A1),),)
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.screenHeight!-230,
                                width: SizeConfig.screenWidth!*1,
                                // padding: EdgeInsets.only(left: 10,right: 10),
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 20,
                                  physics: BouncingScrollPhysics(),
                                  itemBuilder: (ctx,i){
                                    return Container(
                                      margin: EdgeInsets.only(bottom: 15,left: 20,right: 20),
                                      width: SizeConfig.screenWidth!*1,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Color(0XFFF5F5F5)),
                                        boxShadow: [
                                          BoxShadow(color: Colors.black26, spreadRadius: 0,blurRadius: 9,
                                            offset: Offset(
                                              0.0, // Move to right 10  horizontally
                                              5.0, // Move to bottom 10 Vertically),
                                            ),),
                                        ],
                                        color: Color(0XFFffffff),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 40,
                                                  margin: EdgeInsets.only(left: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(50),
                                                    color: Color(0XFFDCE6DB),
                                                  ),
                                                  alignment: Alignment.center,
                                                  child: Image.asset("assets/mail.png",width: 20,),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 10),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('Our shop lunched padi',style: TextStyle(fontSize: 16,fontFamily: 'RR',color: Color(0xff4C7843),fontWeight: FontWeight.w600),),
                                                      SizedBox(height: 5,),
                                                      Text('Your eligible this offer 3days only',style: TextStyle(fontSize: 13,fontFamily: 'RI',color: Color(0xffA1A1A1),),)
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            margin: EdgeInsets.only(right: 8,top: 10,bottom: 5),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Opacity(
                                                    opacity:0.5,
                                                    child: Image.asset("assets/menu-circle.png",width: 20,)),
                                                Text('5 Min Ago',style: TextStyle(fontSize: 13,fontFamily: 'RR',color: Color(0xffA1A1A1),),)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
             ],
            ),
          ),
        ),
      ),
    );
  }
}