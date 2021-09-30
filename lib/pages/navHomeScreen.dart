import 'package:ecommerce/notifiers/themeNotifier.dart';
import 'package:ecommerce/styles/constants.dart';
import 'package:ecommerce/styles/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'HomePage/Cartpage.dart';
import 'HomePage/LandingPage.dart';
import 'HomePage/Notification.dart';
import 'HomePage/offerPage.dart';
import 'loginpage/login.dart';
import 'theme-file.dart';

class Masterpage extends StatefulWidget {
  const Masterpage({Key? key}) : super(key: key);

  @override
  _MasterpageState createState() => _MasterpageState();
}

class _MasterpageState extends State<Masterpage> {
  @override
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  int menuSel=1;
  late  double width,height,width2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    SizeConfig().init(context);
    return SafeArea(
      child: Consumer<ThemeNotifier>(
        builder:(ctx,tn,child)=> Scaffold(
          key: scaffoldkey,
          drawer: Container(
            height: height,
            width: width,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color:tn.primaryColor,
            //    borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15))
            ),

            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      scaffoldkey.currentState!.openEndDrawer();
                      // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ThemeSettings()));
                    }, icon: Icon(Icons.clear,color: Colors.white,size: 28,),),
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
                DrawerContent(
                    title: 'Home Page',
                    ontap: (){
                      setState(() {
                        menuSel=1;
                      });
                      scaffoldkey.currentState!.openEndDrawer();
                    },
                ),
                DrawerContent(
                    title: 'Theme',
                    ontap: (){
                      setState(() {
                        menuSel=2;
                      });
                      scaffoldkey.currentState!.openEndDrawer();
                    },
                ),
                DrawerContent(
                  title: 'Notification',
                  ontap: (){
                    setState(() {
                      menuSel=3;
                    });
                    scaffoldkey.currentState!.openEndDrawer();
                  },
                ),
                DrawerContent(
                  title: 'Offer',
                  ontap: (){
                    setState(() {
                      menuSel=4;
                    });
                    scaffoldkey.currentState!.openEndDrawer();
                  },
                ),
                 Spacer(),
                DrawerContent(
                  title: 'LogOut',
                  ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>loginPage()),);
                  },
                ),
                // Divider(color: Color(0xff099FAF),thickness: 0.1,),
              ],
            ),
          ),
          body:menuSel==1?HomePage(
            voidCallback:(){
              scaffoldkey.currentState!.openDrawer();
            },
          ) :menuSel==2?ThemeSettings (
            voidCallback:(){

              scaffoldkey.currentState!.openDrawer();
            },
          ):menuSel==3?NotificationBar (
            voidCallback:(){

              scaffoldkey.currentState!.openDrawer();
            },
          ) :menuSel==4?OfferPage (
            voidCallback:(){

              scaffoldkey.currentState!.openDrawer();
            },
          )  :Container(),
        ),
      ),



    );
  }
}

class DrawerContent extends StatelessWidget {
  String title;
  VoidCallback ontap;
  DrawerContent({required this.title,required this.ontap});
  late double width;

  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    return Consumer<ThemeNotifier>(
      builder:(ctx,tn,child)=>  GestureDetector(
        onTap: ontap,
        child: Container(
          height: 50,
          width: width,
          color: Colors.transparent,
          margin: EdgeInsets.only(top: 5,bottom: 5),
          child: Row(
            children: [
              SizedBox(width: 20,),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: tn.primaryColor3,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$title",
                    style: TextStyle(fontFamily: 'RR',fontSize: 18,color: Colors.white,letterSpacing: 0.1),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

