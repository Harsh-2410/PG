import 'package:flutter/material.dart';
import '../components/widget_support.dart';
import 'detail_page.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

  int hexColor(String color){
    String newColor = '0xff' + color;
    newColor = newColor.replaceAll('#', '');
    int finalColor = int.parse(newColor);
    return finalColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0,),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Favorite",
                    style: AppWidget.HeadlineTextFieldStyle()
                  ),

                SizedBox(height: 1.0,),
               Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(1),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("lib/images/p_g.png", height: 150, width: 170, fit: BoxFit.cover,),

                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Roshan PG", style: AppWidget.semiBoldTextFieldStyle(),),
                                      Text("Sector 2", style: AppWidget.LightTextFieldStyle(),),
                                    ],
                                  ),
                                  SizedBox(width: 8.0,),
                                  Icon(Icons.arrow_circle_right_outlined, color: Color(hexColor('#3787DD')), size: 35, ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0,),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: EdgeInsets.all(4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("lib/images/p_g.png", height: 150, width: 170, fit: BoxFit.cover,),

                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Roshan PG", style: AppWidget.semiBoldTextFieldStyle(),),
                                  Text("Sector 2", style: AppWidget.LightTextFieldStyle(),),
                                ],
                              ),
                              SizedBox(width: 8.0,),
                              Icon(Icons.arrow_circle_right_outlined, color: Color(hexColor('#3787DD')), size: 35, ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
                SizedBox(height: 8.0,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(1),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("lib/images/p_g.png", height: 150, width: 170, fit: BoxFit.cover,),

                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Roshan PG", style: AppWidget.semiBoldTextFieldStyle(),),
                                        Text("Sector 2", style: AppWidget.LightTextFieldStyle(),),
                                      ],
                                    ),
                                    SizedBox(width: 8.0,),
                                    Icon(Icons.arrow_circle_right_outlined, color: Color(hexColor('#3787DD')), size: 35, ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 9.0,),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: EdgeInsets.all(4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("lib/images/p_g.png", height: 150, width: 170, fit: BoxFit.cover,),

                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Roshan PG", style: AppWidget.semiBoldTextFieldStyle(),),
                                    Text("Sector 2", style: AppWidget.LightTextFieldStyle(),),
                                  ],
                                ),
                                SizedBox(width: 8.0,),
                                Icon(Icons.arrow_circle_right_outlined, color: Color(hexColor('#3787DD')), size: 35, ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(1),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("lib/images/p_g.png", height: 150, width: 170, fit: BoxFit.cover,),

                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Roshan PG", style: AppWidget.semiBoldTextFieldStyle(),),
                                        Text("Sector 2", style: AppWidget.LightTextFieldStyle(),),
                                      ],
                                    ),
                                    SizedBox(width: 8.0,),
                                    Icon(Icons.arrow_circle_right_outlined, color: Color(hexColor('#3787DD')), size: 35, ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 9.0,),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: EdgeInsets.all(4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("lib/images/p_g.png", height: 150, width: 170, fit: BoxFit.cover,),

                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Roshan PG", style: AppWidget.semiBoldTextFieldStyle(),),
                                    Text("Sector 2", style: AppWidget.LightTextFieldStyle(),),
                                  ],
                                ),
                                SizedBox(width: 8.0,),
                                Icon(Icons.arrow_circle_right_outlined, color: Color(hexColor('#3787DD')), size: 35, ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
