import 'package:ecommerce/notifiers/themeNotifier.dart';
import 'package:ecommerce/styles/constants.dart';
import 'package:ecommerce/styles/size.dart';
import 'package:ecommerce/widgets/bottomPainter.dart';
import 'package:ecommerce/widgets/companySettingsTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';



class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  late  double width,height,width2,height2;
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
              backgroundColor: Color(0xffE7ECEF),
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
                            margin:  EdgeInsets.only(left:5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(onPressed: (){
                                  Navigator.pop(context,);
                                },
                                  icon: SvgPicture.asset('assets/login/backward-01.svg',width:25,),
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
                   // SizedBox(height:20,),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.only(top: 20),
                        height: 300,
                        width:width*0.95,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: 7,
                            itemBuilder: (ctx,i){
                          return  Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: width*0.95,
                            height:60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xffffffff),
                            ) ,
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text('Tomato Country',style: TextStyle(fontFamily: 'RB',color: Colors.black,fontSize: 14),),
                                  ),

                                  Container(
                                    child: Row(
                                      children: [
                                        addRemoveBtn(Icon(Icons.add,color: tn.primaryColor,size: 20,)),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,right: 5),
                                          child: Text("2000",style: gridTextColor15 ,),
                                        ),
                                        addRemoveBtn(Icon(Icons.remove,color: tn.primaryColor,size: 20,)),
                                      ],

                                    ),
                                  ),
                                  Container(
                                    child: Text( 'Rs.23.00', style: TextStyle(fontSize: 14,fontFamily: 'RB',color:tn.primaryColor,),),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                        ),
                    ),

                    Container(
                        width: width*0.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text('Price Details',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Color(0xff878787)),),
                          ),
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
                      padding: EdgeInsets.only(left: 25,right: 25),
                      height: 65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('28 Items',style: TextStyle(fontFamily: 'RR',fontSize: 16,color: Color(0xFF000000)),),
                          Text('Pay 2,199',style: TextStyle(fontFamily: 'RB',fontSize: 16,color:tn.primaryColor,fontWeight: FontWeight.bold),)
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
                  Navigator.pop(context);
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
                    child: Icon(Icons.add,color:Colors.white,size: 30,),
                  ),
                ),
              ),
            ),
          ],
        )

        )
    );
  }
}
addRemoveBtn(Widget icon){
  return Container(
    height: 25,
    width: 25,
    decoration: BoxDecoration(
        color:Color(0xffF5F4F2),
        borderRadius:BorderRadius.circular(5)
    ),
    child: Center(
      child: icon,
    ),
  );
}