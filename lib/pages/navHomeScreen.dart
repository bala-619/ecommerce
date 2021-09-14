import 'package:ecommerce/notifiers/themeNotifier.dart';
import 'package:ecommerce/styles/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'HomePage/LandingPage.dart';
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
                Container(
                  height: 50,
                  color:tn.primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Container(child: Image.asset("assets/images/logo-white.png", width:40)),
                      Container(
                        child: Text('E-Commerce',style: TextStyle(color: Color(0xffffffff),fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    // color: Colors.red
                    //  border: Border(bottom: BorderSide())
                  ),
                  child: ListTile(
                    leading:SvgPicture.asset("assets/side-icon/dashboard.svg",width: 25,color:tn.primaryColor1,),
                    title: Text('Home Page', style: TextStyle(fontSize: 20,color:tn.primaryColor1, fontFamily:'RR'), ),
                    onTap: (){
                      setState(() {
                        menuSel=1;
                      });
                      scaffoldkey.currentState!.openEndDrawer();
                    },

                  ),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(),
                  child: ListTile(
                    leading:SvgPicture.asset("assets/side-icon/settings.svg",width: 25,color:tn.primaryColor1,),
                    title: Text('Theme', style: TextStyle(fontSize: 20,color:tn.primaryColor1, fontFamily:'RR'), ),
                    onTap: (){
                      setState(() {
                        menuSel=2;
                      });
                      scaffoldkey.currentState!.openEndDrawer();
                    },
                  ),
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
          ) :Container(),
        ),
      ),



    );
  }
}
