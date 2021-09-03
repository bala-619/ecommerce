import 'package:flutter/material.dart';

class NavBarIcon extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 55,
      color: Colors.transparent,
      padding: EdgeInsets.only(left: 15,right: 10,top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6,),
          Container(
            height: 2.5,
            width: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              //  color: AppTheme.bgColor
                color: Colors.white
            ),
          ),
          SizedBox(height: 2,),
          Container(
            height: 2.5,
            width: 17,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white
            ),
          ),
          SizedBox(height: 2,),
          Container(
            height: 2.5,
            width: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white
            ),
          ),
        /*  SizedBox(height: 2,),
          Container(
            height: 2,
            width: 17,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey
            ),
          ),*/
        ],
      ),
    );
  }
}
