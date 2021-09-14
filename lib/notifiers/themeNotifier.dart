import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier{
  int selectThemeIndex=1;

  Color primaryColor=Color(0xff6A8528);
  Color primaryColor1=Color(0XFF4E6713);
  Color primaryColor2=Color(0xFFE0E8D3);

  updateTheme(int index){
    selectThemeIndex=index;

    if(index==1){
      primaryColor=Color(0xff6A8528);
      primaryColor1=Color(0XFF4E6713);
      primaryColor2=Color(0xFFE0E8D3);
    }
    else if(index==2){
      primaryColor=Color(0xffFB5837);
      primaryColor1=Color(0XffA73A24);
      primaryColor2=Color(0xFFFDBCAE);
    }
    else if(index==3){
      primaryColor=Color(0xff7064F6);
      primaryColor1=Color(0Xff4A42A4);
      primaryColor2=Color(0xFFC4C0FB);

    }
    else if(index==4){
      primaryColor=Color(0xffFF9B31);
      primaryColor1=Color(0XffAA6720);
      primaryColor2=Color(0xFFFFD7AD);
    }
    else if(index==5){
      primaryColor=Color(0xff1B9BFC);
      primaryColor1=Color(0Xff1267A8);
      primaryColor2=Color(0xFFD1EAFE);
    }




    else{
      primaryColor=Color(0xff6A8528);
    }


    notifyListeners();

  }

}