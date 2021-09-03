import 'package:flutter/material.dart';

class SizeConfig {

  static late MediaQueryData mediaQueryData;
  static double? screenWidth;
  static double? screenWidthM40;
  static late double screenWidthM0_04;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;
 static  double? height4,height10,height12,height16,height18,height20,height25,height26,height30,height35,height40,height50,height55,height60,height70,height80,height90,height100,height114,height130,height140,height150,height180,height200,height250,height270,height400,height430,height600,height690;
  static  double? width5,width10,width12,width14,width16,width18,width20,width25,width30,width35,width40,width45,width50,width60,width70,width80,width90,width100,width116,width120,width125,width130,width140,width150,width179,width186,width200,width250,width320,width265,width400,width410,width500;
  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;


    width5=screenWidth!>420?screenWidth!*(5/600):screenWidth!*(5/320);
    width10=screenWidth!>420?screenWidth!*(10/600):screenWidth!*(10/320);
    width12=screenWidth!>420?screenWidth!*(12/600):screenWidth!*(12/320);
    width14=screenWidth!>420?screenWidth!*(14/600):screenWidth!*(14/320);
    width16=screenWidth!>420?screenWidth!*(16/600):screenWidth!*(16/320);
    width18=screenWidth!>420?screenWidth!*(18/600):screenWidth!*(18/320);
    width20=screenWidth!>420?screenWidth!*(20/600):screenWidth!*(20/320);
    width25=screenWidth!>420?screenWidth!*(25/600):screenWidth!*(25/320);
    width30=screenWidth!>420?screenWidth!*(30/600):screenWidth!*(30/320);
    width35=screenWidth!>420?screenWidth!*(35/600):screenWidth!*(35/320);
    width40=screenWidth!>420?screenWidth!*(40/600):screenWidth!*(40/320);
    width45=screenWidth!>420?screenWidth!*(45/600):screenWidth!*(45/320);
    width50=screenWidth!>420?screenWidth!*(50/600):screenWidth!*(50/320);
    width60=screenWidth!>420?screenWidth!*(60/600):screenWidth!*(60/320);
    width70=screenWidth!>420?screenWidth!*(70/600):screenWidth!*(70/320);
    width80=screenWidth!>420?screenWidth!*(80/600):screenWidth!*(80/320);
    width90=screenWidth!>420?screenWidth!*(90/600):screenWidth!*(90/320);
    width100=screenWidth!>420?screenWidth!*(100/600):screenWidth!*(100/320);
    width116=screenWidth!>420?screenWidth!*(116/600):screenWidth!*(116/320);
    width120=screenWidth!>420?screenWidth!*(120/600):screenWidth!*(120/320);
    width125=screenWidth!>420?screenWidth!*(125/600):screenWidth!*(125/320);
    width130=screenWidth!>420?screenWidth!*(130/600):screenWidth!*(130/320);
    width140=screenWidth!>420?screenWidth!*(140/600):screenWidth!*(140/320);
    width150=screenWidth!>420?screenWidth!*(150/600):screenWidth!*(150/320);
    width179=screenWidth!>420?screenWidth!*(179/600):screenWidth!*(179/320);
    width186=screenWidth!>420?screenWidth!*(186/600):screenWidth!*(186/320);
    width200=screenWidth!>420?screenWidth!*(200/600):screenWidth!*(200/320);
    width250=screenWidth!>420?screenWidth!*(250/600):screenWidth!*(250/320);
    width265=screenWidth!>420?screenWidth!*(265/600):screenWidth!*(265/320);
    width320=screenWidth!>420?screenWidth!*(320/600):screenWidth!*(320/320);
    width400=screenWidth!>420?screenWidth!*(400/600):screenWidth!*(400/320);
    width410=screenWidth!>420?screenWidth!*(410/600):screenWidth!*(410/320);
    width500=screenWidth!>420?screenWidth!*(500/600):screenWidth!*(500/320);
    screenWidthM40 = mediaQueryData.size.width-width40!;
    screenWidthM0_04 = mediaQueryData.size.width-(mediaQueryData.size.width*0.04);


    height4=screenWidth!>420? screenHeight!*(4/960):screenHeight!*(4/720);
    height10=screenWidth!>420? screenHeight!*(10/960):screenHeight!*(10/720);
    height12=screenWidth!>420? screenHeight!*(12/960):screenHeight!*(12/720);
    height16=screenWidth!>420? screenHeight!*(16/960):screenHeight!*(16/720);
    height18=screenWidth!>420? screenHeight!*(18/960):screenHeight!*(18/720);
    height20=screenWidth!>420? screenHeight!*(20/960):screenHeight!*(20/720);
    height25=screenWidth!>420? screenHeight!*(25/960):screenHeight!*(25/720);
    height26=screenWidth!>420? screenHeight!*(26/960):screenHeight!*(26/720);
    height30=screenWidth!>420? screenHeight!*(30/960):screenHeight!*(30/720);
    height35=screenWidth!>420? screenHeight!*(35/960):screenHeight!*(35/720);
    height40=screenWidth!>420? screenHeight!*(40/960):screenHeight!*(40/720);
    height50=screenWidth!>420? screenHeight!*(50/960):screenHeight!*(50/720);
    height55=screenWidth!>420? screenHeight!*(55/960):screenHeight!*(55/720);
    height60=screenWidth!>420? screenHeight!*(60/960):screenHeight!*(60/720);
    height70=screenWidth!>420? screenHeight!*(70/960):screenHeight!*(70/720);
    height80=screenWidth!>420? screenHeight!*(80/960):screenHeight!*(80/720);
    height90=screenWidth!>420? screenHeight!*(90/960):screenHeight!*(90/720);
    height100=screenWidth!>420? screenHeight!*(100/960):screenHeight!*(100/720);
    height114=screenWidth!>420? screenHeight!*(114/960):screenHeight!*(114/720);
    height130=screenWidth!>420? screenHeight!*(130/960):screenHeight!*(130/720);
    height140=screenWidth!>420? screenHeight!*(140/960):screenHeight!*(140/720);
    height150=screenWidth!>420? screenHeight!*(150/960):screenHeight!*(150/720);
    height180=screenWidth!>420? screenHeight!*(180/960):screenHeight!*(180/720);
    height200=screenWidth!>420? screenHeight!*(200/960):screenHeight!*(200/720);
    height250=screenWidth!>420? screenHeight!*(250/960):screenHeight!*(250/720);
    height270=screenWidth!>420? screenHeight!*(270/960):screenHeight!*(270/720);
    height400=screenWidth!>420? screenHeight!*(400/960):screenHeight!*(400/720);
    height430=screenWidth!>420? screenHeight!*(430/960):screenHeight!*(430/720);
    height600=screenWidth!>420? screenHeight!*(600/960):screenHeight!*(600/720);
    height690=screenWidth!>420? screenHeight!*(690/960):screenHeight!*(690/720);




  }
}


