import 'package:flutter/material.dart';

class CompanySettingsTextField extends StatelessWidget {
  String hintText;
  String img;
  CompanySettingsTextField({required this.hintText,required this.img});

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: _text1,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.left,
      maxLines: 1,
      style:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xff7F7F7F),),

      decoration: InputDecoration(
        fillColor: Color(0xffffffff),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Color(0xffD2D2D2))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff929BC4)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: hintText,
        hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),
        prefixIcon: Container(
          margin:  EdgeInsets.only(left: 0,),
          alignment: Alignment.center,
          child: Image.asset(img,width: 23,color:Color(0xffB6B6B6) ,fit:BoxFit.cover,),
        ),
        prefixIconConstraints: BoxConstraints(
            maxHeight: 50,
            maxWidth: 50,
            minWidth: 40,
            minHeight: 40
        ),
      ),

    );
  }
}
