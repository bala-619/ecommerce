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
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                    color: tn.primaryColor
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ThemeSettings()));
                        }, icon: Icon(Icons.dashboard_outlined,color: Colors.white,))
                      ],
                    ),
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
