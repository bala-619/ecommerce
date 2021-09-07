import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier{
  int selectThemeIndex=1;

  Color primaryColor=Color(0xff6A8528);

  updateTheme(int index){
    selectThemeIndex=index;

    if(index==1){
      primaryColor=Color(0xff6A8528);
    }
    else if(index==2){
      primaryColor=Color(0xff4B5AFF);
    }
    else if(index==3){
      primaryColor=Color(0xffE8F00FF);
    }
    else if(index==4){
      primaryColor=Color(0xff4B5AFF);
    }
    else if(index==5){
      primaryColor=Color(0xffBA04C9);
    }




    else{
      primaryColor=Color(0xff6A8528);
    }


    notifyListeners();

  }

}