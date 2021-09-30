import 'package:ecommerce/notifiers/themeNotifier.dart';
import 'package:ecommerce/pages/HomePage/ViewAll.dart';
import 'package:ecommerce/pages/HomePage/viewProductDetail.dart';
import 'package:ecommerce/pages/theme-file.dart';
import 'package:ecommerce/widgets/bottomPainter.dart';
import 'package:ecommerce/widgets/companySettingsTextField.dart';
import 'package:ecommerce/styles/constants.dart';
import 'package:ecommerce/styles/size.dart';
import 'package:ecommerce/widgets/innerShadowTBContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Cartpage.dart';


class HomePage extends StatefulWidget {
  VoidCallback voidCallback;
  HomePage({required this.voidCallback});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  late  double width,height,width2,height2;
  List<int> topSaleList=List.generate(20, (index) => index);

  int selectTopSale=0;
  bool isGridView=true;
  int selectAddRemove=-1;
  

  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    height2=height-16;
    SizeConfig().init(context);
    return SafeArea(
        child: Consumer<ThemeNotifier>(
          builder:(ctx,tn,child)=> Stack(
            children: [
              Scaffold(
                backgroundColor: Colors.white,
                body: Container(
                  height: height,
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Container(
                      height: 120,
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

                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width:width*0.8,
                                    height: 45,
                                    child: CompanySettingsTextField(
                                      enable: false,
                                        hintText: "Search Product", img: "assets/search.png")
                                ),
                                Container(
                                  width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: tn.primaryColor1,
                                    ) ,
                                    child:   Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/Filter.png',width: 20,),
                                      ],
                                    )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                      InnerShadowTBContainer(
                        height: height-235,
                        width: width,
                        child: ListView(
                          children: [
                            Container(
                                width: SizeConfig.screenWidth,
                                height: 140,
                                padding: EdgeInsets.only(left: 10,top: 20),
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  physics: BouncingScrollPhysics(),
                                  itemBuilder: (ctx,i){
                                    return   Container(
                                      margin: EdgeInsets.only(right: 10.0),
                                      width:SizeConfig.screenWidth!*0.6,
                                      height: 140,
                                      child: Stack(
                                        children: [
                                          Container(
                                            child: Image.asset('assets/offer-slider.png',fit: BoxFit.cover,),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 20,top: 10),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('60 % Offer',style: TextStyle(fontFamily: 'RI',fontSize: 18,color: Color(0xffF82023),fontWeight: FontWeight.bold),),
                                                Text('First User Use this promo',style: TextStyle(fontFamily: 'RI',fontSize: 12,color: Color(0xff5D5C51)),),
                                                SizedBox(height: 2,),
                                                Container(
                                                  padding: EdgeInsets.fromLTRB(8,3,8,3),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5.0),
                                                    color:Color(0xff6A8528),
                                                  ) ,
                                                  child: Text('WELCOME60',style: TextStyle(fontFamily: 'RR',fontSize: 12,color: Color(0xffffffff)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                )
                            ),
                            Container(
                              width: SizeConfig.screenWidth,
                              margin: EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Categories',style: TextStyle(fontFamily: 'RB',fontSize: 18,color: Color(0xff000000),fontWeight: FontWeight.bold),),
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        isGridView=!isGridView;
                                        selectAddRemove=-1;
                                      });
                                    },
                                    child: Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            border: Border.all(color: Color(0xff5D5C51),style:BorderStyle.solid )

                                        ) ,
                                        child:   Icon(isGridView?Icons.dashboard_outlined:Icons.list,
                                          color: Color(0xff5D5C51),)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                                width: SizeConfig.screenWidth,
                                height: 70,
                                //  padding: EdgeInsets.only(bottom: 10),
                                alignment: Alignment.centerLeft,
                                child: ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                  shrinkWrap: true,
                                  itemBuilder: (ctx,i){
                                    return  GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          selectTopSale=i;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 400),
                                        curve: Curves.easeIn,
                                        decoration:i==selectTopSale? BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          boxShadow: [
                                            BoxShadow(
                                              color:tn.primaryColor.withOpacity(0.5),
                                              blurRadius: 5.0, // soften the shadow
                                              spreadRadius: 2, //extend the shadow
                                              offset: Offset(
                                                2.0, // Move to right 10  horizontally
                                                2.0, // Move to bottom 10 Vertically
                                              ),
                                            )
                                          ],
                                          color:tn.primaryColor,
                                        ):BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          border: Border.all(color: Color(0xffE2E2E2),style:BorderStyle.solid ),
                                          color:Color(0xffF8F8FA),
                                        ) ,
                                        margin: EdgeInsets.only(right: 10,top: 10,bottom: 10,left: i==0?10:0),
                                        width: SizeConfig.screenWidth!*0.35,
                                        height:45 ,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.dashboard_outlined,color:i==selectTopSale? Colors.white:Color(0xff959595),),
                                            Text('Vegetables',style: TextStyle(fontFamily: 'RR',fontSize: 14,color: i==selectTopSale? Colors.white:Color(0xff959595))),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                )
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: SizeConfig.screenWidth,
                              margin: EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Top Sale',style: TextStyle(fontFamily: 'RB',fontSize: 18,color: Color(0xff000000),fontWeight: FontWeight.bold),),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 8.0),
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ViewAllItems()));
                                          },
                                            child: Text('View All',style: TextStyle(fontFamily: 'RR',fontSize: 14,color:tn.primaryColor),)),
                                      ),
                                      Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5.0),
                                              //border: Border.all(color: Color(0xff5D5C51),style:BorderStyle.solid )
                                              color:tn.primaryColor
                                          ) ,
                                          child:   Icon(Icons.chevron_right,color: Color(0xffffffff),size: 15,)
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15,),
                            Expanded(
                                child:isGridView? Wrap(
                                  children: topSaleList.asMap().map((key, value) => MapEntry(key, Container(
                                    height: 225,
                                    width: width*0.48,
                                    margin: EdgeInsets.fromLTRB(width*0.01, 5, width*0.01, 5),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: lightGrey
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(17),
                                            color: Colors.white,
                                          ),
                                          clipBehavior: Clip.antiAlias,
                                          margin: EdgeInsets.all(15.0),
                                          height: 155,
                                          width: width*0.40,
                                          child: Stack(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(5),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        GestureDetector(
                                                          onTap: (){
                                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewProductDetails()),);
                                                          },
                                                          child: Container(
                                                            width: 20,
                                                            height: 20,
                                                            decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(20),
                                                              color: Colors.white,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color:Color(0xFF000000).withOpacity(0.15),
                                                                  blurRadius: 10.0, // soften the shadow
                                                                  spreadRadius: 0.1, //extend the shadow
                                                                  offset: Offset(
                                                                    0.0, // Move to right 10  horizontally
                                                                    0.0, // Move to bottom 10 Vertically
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            child: Icon(Icons.remove_red_eye,color: tn.primaryColor2,size: 18,),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 20,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(20),
                                                            color: Colors.white,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color:Color(0xFF000000).withOpacity(0.15),
                                                                blurRadius: 10.0, // soften the shadow
                                                                spreadRadius: 0.1, //extend the shadow
                                                                offset: Offset(
                                                                  4.0, // Move to right 10  horizontally
                                                                  4.0, // Move to bottom 10 Vertically
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          child: Icon(Icons.favorite,color: tn.primaryColor2,size: 18,),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: (){
                                                      setState(() {
                                                        selectAddRemove=key;
                                                      });
                                                    },
                                                    child: Container(
                                                      child: Image.asset('assets/items-list/tomato.png',width: 90,fit: BoxFit.cover,),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 35,
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          width: (width*0.35)-35,
                                                        ),
                                                        Container(
                                                          width: 35,
                                                          height: 35,
                                                          decoration: BoxDecoration(
                                                              color: tn.primaryColor2,
                                                              borderRadius: BorderRadius.only(
                                                                topLeft: Radius.circular(17),
                                                              )
                                                          ),
                                                          child: Center(
                                                            child: Text('20%',style: TextStyle(color:tn.primaryColor,fontSize: 14,fontFamily: 'RB'),),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),

                                              IgnorePointer(
                                                ignoring:selectAddRemove==key? false:true ,
                                                child: GestureDetector(
                                                  onTap: (){
                                                    setState(() {
                                                      selectAddRemove=-1;
                                                    });
                                                  },
                                                  child: AnimatedContainer(
                                                    duration: Duration(milliseconds: 300),
                                                    curve: Curves.easeIn,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(17),
                                                      color:tn.primaryColor2.withOpacity(selectAddRemove==key? 0.6:0),
                                                    ),
                                                    clipBehavior: Clip.antiAlias,
                                                    height: 155,
                                                    width: width*0.40,
                                                  ),
                                                ),
                                              ),

                                              selectAddRemove==key?Align(
                                                alignment: Alignment.center,
                                                child:  Container(
                                                  height: 40,
                                                  width: width*0.31,
                                                  decoration: BoxDecoration(
                                                      color:tn.primaryColor,
                                                      borderRadius:BorderRadius.circular(10)
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: [
                                                      addRemoveBtn(Icon(Icons.add,color: tn.primaryColor,size: 25,)),
                                                      Text("200",style: TSWhite166,),
                                                      addRemoveBtn(Icon(Icons.remove,color: tn.primaryColor,size: 25,)),
                                                    ],
                                                  ),
                                                ),
                                              ):Container(),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 40,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(left: 7),

                                                width: (width*0.48)-40,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      child: Text('Tomato Country',style: TextStyle(fontFamily: 'RB',color: Colors.black,fontSize: 13),),
                                                    ),
                                                    Container(
                                                      child: RichText(
                                                        text: TextSpan(
                                                          text: '1 Kg ',
                                                          style: TextStyle(color: Color(0xff000000),fontSize: 13,fontFamily: 'RR'),
                                                          children: <TextSpan>[
                                                            TextSpan(text: ' 35.00', style: TextStyle(fontSize: 13,fontFamily: 'RR',color: Color(0XFF919191),decoration: TextDecoration.lineThrough)),
                                                            TextSpan(text: ' Rs.23.00', style: TextStyle(fontSize: 13,fontFamily: 'RB',color:tn.primaryColor,),),
                                                          ],
                                                        ),

                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 40,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    color: tn.primaryColor,
                                                    borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(20),
                                                    )
                                                ),
                                                child: Center(
                                                  child: Icon(Icons.add,color: Colors.white,size: 30,),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ))).values.toList(),
                                ):
                                ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: topSaleList.length,
                                    itemBuilder: (ctx,i){
                                      return Container(
                                        height: 120,
                                        width: width,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Color(0xffF7F7F7),
                                        ),
                                        clipBehavior: Clip.antiAlias,
                                        margin: EdgeInsets.all(10),
                                        child: Container(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                width: width*0.24,
                                                height: 90,
                                                margin: EdgeInsets.only(left: 10,right: 10),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(15),
                                                  color: Colors.white,
                                                ),
                                                alignment: Alignment.center,
                                                child: Image.asset('assets/items-list/tomato.png',
                                                  width: 70,fit: BoxFit.cover,),
                                              ),

                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text('Tomato Country',style: TextStyle(fontFamily: 'RB',color: Colors.black,fontSize: 14),),
                                                  ),
                                                  Container(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        text: '1 Kg ',
                                                        style: TextStyle(color: Color(0xff000000),fontSize: 14,fontFamily: 'RR'),
                                                        children: <TextSpan>[
                                                          TextSpan(text: ' 35.00', style: TextStyle(fontSize: 14,fontFamily: 'RR',color: Color(0XFF919191),decoration: TextDecoration.lineThrough)),
                                                          TextSpan(text: ' Rs.23.00', style: TextStyle(fontSize: 14,fontFamily: 'RB',color:tn.primaryColor,),),
                                                        ],
                                                      ),

                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Container(
                                                width: 63,
                                                height: 28,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(25),
                                                  color:tn.primaryColor,
                                                ),
                                                alignment: Alignment.center,
                                                child: Text('Add',style: TextStyle(color: Colors.white,fontSize: 14,fontFamily: 'RR'),),
                                              ),
                                              Spacer(),
                                              Column(
                                                children: [
                                                  SizedBox(height: 15,),
                                                  Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:Color(0xFF000000).withOpacity(0.15),
                                                          blurRadius: 10.0, // soften the shadow
                                                          spreadRadius: 0.1, //extend the shadow
                                                          offset: Offset(
                                                            4.0, // Move to right 10  horizontally
                                                            4.0, // Move to bottom 10 Vertically
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    child: Icon(Icons.favorite,color: tn.primaryColor2,size: 18,),
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                    width: 50,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                        color: tn.primaryColor,
                                                        borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(20),
                                                        )
                                                    ),
                                                    child: Center(
                                                      child: Text("20%",style: TSWhite166,),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    }
                                )
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                bottomNavigationBar:  Container(
                  width: SizeConfig.screenWidth,
                  // height:_keyboardVisible?0:  70,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.white12.withOpacity(0.1),
                     // color: Color(0xFF787878).withOpacity(0.1),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF787878).withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 25,
                          offset: Offset(0, 0), // changes position of shadow
                        )
                      ]
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                        ),
                        margin:EdgeInsets.only(top: 0),
                        child: CustomPaint(
                          size: Size( SizeConfig.screenWidth!, 65),
                          painter: RPSCustomPainter(),
                        ),
                      ),
                      Container(
                        width:  SizeConfig.screenWidth,
                        height: 65,
                        child: Stack(
                          children: [

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()),);
                  },
                  child: Container(
                    height: 57,
                    width: 57,
                    margin: EdgeInsets.only(bottom: 25),
                    decoration: BoxDecoration(
                      color: tn.primaryColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color:tn.primaryColor.withOpacity(0.5),
                          blurRadius: 10.0, // soften the shadow
                          spreadRadius: 3, //extend the shadow
                          offset: Offset(
                            2.0, // Move to right 10  horizontally
                            4.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ]
                    ),
                    child: Center(
                      child: Image.asset("assets/items-list/cart.png",width: 30,),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }

  addRemoveBtn(Widget icon){
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color:Colors.white,
          borderRadius:BorderRadius.circular(5)
      ),
      child: Center(
        child: icon,
      ),
    );
  }

}
