import 'package:ecommerce/styles/size.dart';
import 'package:flutter/material.dart';


class OfferPage extends StatefulWidget {
  VoidCallback voidCallback;
  OfferPage({required this.voidCallback});


  @override
  _OfferPageState createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  late  double width,height,width2,height2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    height2=height-16;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
            Container(
              clipBehavior:Clip.antiAlias,
            height: 300,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
              child: Container(
                alignment: Alignment.center,
                  child: Image.asset("assets/slider/Offer-img.jpg",fit: BoxFit.cover,width: width,)),
            ),
          //     Container(
          //       child:ListView(
          //           children: [
          //           Container(
          //           width: SizeConfig.screenWidth,
          //           height: SizeConfig.screenHeight!-200,
          //           padding: EdgeInsets.only(left: 10,top: 20),
          //           child: ListView.builder(
          //             scrollDirection: Axis.horizontal,
          //             itemCount: 3,
          //             physics: BouncingScrollPhysics(),
          //             itemBuilder: (ctx,i){
          //               return   Container(
          //                 margin: EdgeInsets.only(right: 10.0),
          //                 width:SizeConfig.screenWidth!*0.6,
          //                 height: 140,
          //                 child: Stack(
          //                   children: [
          //                     Container(
          //                       child: Image.asset('assets/offer-slider.png',fit: BoxFit.cover,),
          //                     ),
          //
          //                   ],
          //                 ),
          //               );
          //             },
          //           )
          //       ),
          //
          //   ],
          //       ),
          // ),
          ]
        ),
      )
      ),
    )
    );
  }
}
