import 'package:ecommerce/notifiers/themeNotifier.dart';
import 'package:ecommerce/pages/theme-file.dart';
import 'package:ecommerce/widgets/companySettingsTextField.dart';
import 'package:ecommerce/widgets/constants.dart';
import 'package:ecommerce/widgets/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  late  double width,height,width2,height2;
  List<int> list=List.generate(10, (index) => index);

  int selectTopSale=0;

  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    height2=height-16;
    return SafeArea(
        child: Consumer<ThemeNotifier>(
          builder:(ctx,tn,child)=> Scaffold(
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
                              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ThemeSettings()));
                            }, icon: Icon(Icons.dashboard_outlined,color: Colors.white,)),
                            Container(
                              padding: EdgeInsets.only(right: 15.0),
                              child:   Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.dashboard_outlined,color: Colors.white,),
                                  ),
                                  Text('Fresh & Eat',style: TextStyle(fontFamily: 'RI',fontSize: 16,color: Colors.white),)
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
                                child: CompanySettingsTextField(hintText: "Search Product", img: "assets/search.png")
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
                                    Icon(Icons.dashboard_outlined,color: Colors.white,),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                  SizedBox(height:20,),
                  Container(
                    width: SizeConfig.screenWidth,
                    height: 140,
                    padding: EdgeInsets.only(left: 10),
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
                        Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Color(0xff5D5C51),style:BorderStyle.solid )

                            ) ,
                            child:   Icon(Icons.dashboard_outlined,color: Color(0xff5D5C51),)
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),

                  SizedBox(height: 20,),
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
                              child: Text('View All',style: TextStyle(fontFamily: 'RR',fontSize: 14,color:tn.primaryColor),),
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

                  Container(
                    width: SizeConfig.screenWidth,
                     height: 65,
                    alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (ctx,i){
                        return  GestureDetector(
                          onTap: (){
                           setState(() {
                             selectTopSale=i;
                           });
                          },
                          child: Container(
                            decoration:i==selectTopSale? BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color:tn.primaryColor.withOpacity(0.75),
                                  blurRadius: 10.0, // soften the shadow
                                  spreadRadius: 0.2, //extend the shadow
                                  offset: Offset(
                                    2.0, // Move to right 10  horizontally
                                    4.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                              color:tn.primaryColor,
                            ):BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Color(0xffE2E2E2),style:BorderStyle.solid ),
                              color:Color(0xffF8F8FA),
                            ) ,
                            margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
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
                  
                  Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Wrap(
                          children: list.asMap().map((key, value) => MapEntry(key, Container(
                            height: 210,
                            width: width*0.45,
                            margin: EdgeInsets.fromLTRB(width*0.025, 10, width*0.025, 10),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: lightGrey
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 160,
                                ),
                                Container(
                                  height: 50,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: (width*0.45)-50,
                                      ),
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: tn.primaryColor,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
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
                        ),
                      )
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
