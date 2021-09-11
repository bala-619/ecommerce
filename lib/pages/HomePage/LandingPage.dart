import 'package:ecommerce/notifiers/themeNotifier.dart';
import 'package:ecommerce/pages/theme-file.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  late  double width,height,width2,height2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    height2=height-16;
    return SafeArea(
        child: Consumer<ThemeNotifier>(
          builder:(ctx,tn,child)=> Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              child: Column(
                children:[
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                    color: tn.primaryColor
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                       child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ThemeSettings()));
                            }, icon: Icon(Icons.dashboard_outlined,color: Colors.white,)),
                            Container(
                              padding: EdgeInsets.only(right: 15.0),
                              child:   Row(
                                children: [
                                  Icon(Icons.dashboard_outlined,color: Colors.white,),
                                  Text('Fresh & Eat',style: TextStyle(fontFamily: 'RI',fontSize: 14,color: Colors.white),)
                                ],
                              )
                            ),
                            
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ThemeSettings()));
                            }, icon: Icon(Icons.dashboard_outlined,color: Colors.white,)),
                            Container(
                                padding: EdgeInsets.only(right: 15.0),
                                child:   Row(
                                  children: [
                                    Icon(Icons.dashboard_outlined,color: Colors.white,),
                                    Text('Fresh & Eat',style: TextStyle(fontFamily: 'RI',fontSize: 14,color: Colors.white),)
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
                ],

              ),
            ),
          ),
        ),
    );
  }
}
