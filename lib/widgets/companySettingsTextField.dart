import 'package:ecommerce/styles/size.dart';
import 'package:flutter/material.dart';

class CompanySettingsTextField extends StatelessWidget {
  String hintText;
  String img;
  CompanySettingsTextField({required this.hintText,required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0), color: Colors.white,
      ) ,
      alignment: Alignment.centerLeft,
      width: SizeConfig.width5,
      child: TextField(
        // controller: _text1,
  //      textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.left,
        maxLines: 1,
        style:TextStyle(fontSize: 16,fontFamily:'RR',color:Color(0xff7F7F7F),),

        decoration: InputDecoration(
          fillColor: Color(0xffff0000),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(color: Color(0xffD2D2D2))
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff6A8528)),
            borderRadius: BorderRadius.circular(30.0),
          ),
          hintText: hintText,
          hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),
          prefixIcon: Container(
            margin:  EdgeInsets.only(left: 0,),
            alignment: Alignment.center,
            child: Image.asset(img,width: 20,color:Color(0xffB6B6B6) ,fit:BoxFit.cover,),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          prefixIconConstraints: BoxConstraints(
              maxHeight: 50,
              maxWidth: 50,
              minWidth: 40,
              minHeight: 40
          ),
        ),

      ),
    );
  }
}
