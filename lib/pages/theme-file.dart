import 'package:ecommerce/notifiers/themeNotifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
class ThemeModel{
  String title;
  Color textColor;
  Color selectColor;
  Color unSelectColor;
  ThemeModel({required this.title,required this.selectColor,required this.unSelectColor, this.textColor=Colors.white});
}

class ThemeSettings extends StatefulWidget {
  VoidCallback voidCallback;
  ThemeSettings({required this.voidCallback});

  @override
  _ThemeSettingsState createState() => _ThemeSettingsState();
}

class _ThemeSettingsState extends State<ThemeSettings> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();

  List<ThemeModel> ThemeList=[
    ThemeModel(title:'G', selectColor: Color(0xff6A8528), unSelectColor: Color(0xff6A8528),),
    ThemeModel(title:'OR', selectColor: Color(0xffFB5837), unSelectColor: Color(0xffFB5837),),
    ThemeModel(title:'P', selectColor: Color(0xff7064F6), unSelectColor: Color(0xff7064F6),),
    ThemeModel(title:'Y', selectColor: Color(0xffFF9B31), unSelectColor: Color(0xffFF9B31),),
    ThemeModel(title:'B', selectColor: Color(0xff1B9BFC), unSelectColor: Color(0xff1B9BFC),),
  ];
  bool theme=false;
  @override
  late  double width,height,width2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    return SafeArea(
      child: Scaffold(
        body: Consumer<ThemeNotifier>(
          builder:(ctx,tn,child)=> Container(
            color:Colors.white,
            child: Column(
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                  width: width,
                  height: 70,
                  color: tn.primaryColor,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0, right: 8.0),
                        child: GestureDetector(
                          onTap: (){
                            widget.voidCallback();
                          },
                          child: SvgPicture.asset("assets/login/backward-01.svg",width: 30,color:Colors.white ,),
                        ),
                      ),
                      Container(
                        child: Text('Theme Settings',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  width: width*0.9,
                  height: height-140,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset("assets/slider/mockup.png",width: 120,),
                        ),
                        SizedBox(height:20,),
                        SizedBox(height: 35,),
                        Container(
                          child: Align(
                            alignment: AlignmentDirectional.centerStart,
                              child: Text('Custom Theme',style: TextStyle(color: Color(0xff52515A),fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'RR'),)),
                        ),
                        SizedBox(height: 20.0,),
                        Wrap(
                            runSpacing: 20,
                            spacing: 20,
                            children: ThemeList.asMap().map((i, value) => MapEntry(i, GestureDetector(
                              onTap: (){
                                tn.updateTheme(i+1);
                              },
                              child:  Container(
                                width: width*0.12,
                                height: width*0.12,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  // borderRadius: BorderRadius.all( Radius.circular(50)),
                                  color: value.unSelectColor,
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child:(i+1)==tn.selectThemeIndex?Container(): Text(value.title,
                                          style: TextStyle(color: value.textColor,fontSize: 14,fontFamily: 'RB'),
                                        )
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: (i+1)==tn.selectThemeIndex?Icon(Icons.done,color: Colors.white,):Container(),
                                    )
                                  ],
                                ),
                              ),
                            ))).values.toList()
                        ),
                        SizedBox(height: 30.0,),
                        GestureDetector(
                          onTap: (){
                         //   Navigator.pop(context);
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // boxShadow: [
                              //   BoxShadow(color: Colors.green, spreadRadius: 3),
                              // ],
                              color: tn.primaryColor,
                            ),
                            child:Center(child: Text('Done',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xffffffff),fontFamily:'RR'), )) ,
                          ),
                        ),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}
