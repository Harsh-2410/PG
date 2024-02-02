import 'package:flutter/material.dart';
import 'package:pg_finder/components/widget_support.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0,),
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Row(
                children: [
                Text("Notification",
                  style: AppWidget.HeadlineTextFieldStyle()
                  ),
                  ],
              ),
              SizedBox(height: 8.0,),
              Container(
                margin: EdgeInsets.only(right: 5.0,),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Image.asset("lib/images/p_g.png", height: 130, width: 130, fit: BoxFit.cover,),
                        SizedBox(width: 20.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Roshan PG", style: AppWidget.semiBoldTextFieldStyle(),),
                            Text("Sector 2", style: AppWidget.LightTextFieldStyle(),),
                          ],
                        ),
                        SizedBox(width: 35,),
                        Icon(Icons.arrow_circle_right_outlined, color: Color(hexColor('#3787DD')), size: 45, ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.0,),
              Container(
                margin: EdgeInsets.only(right: 5.0,),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Image.asset("lib/images/p_g.png", height: 130, width: 130, fit: BoxFit.cover,),
                        SizedBox(width: 20.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Roshan PG", style: AppWidget.semiBoldTextFieldStyle(),),
                            Text("Sector 2", style: AppWidget.LightTextFieldStyle(),),
                          ],
                        ),
                        SizedBox(width: 35,),
                        Icon(Icons.arrow_circle_right_outlined, color: Color(hexColor('#3787DD')), size: 45, ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.0,),
              Container(
                margin: EdgeInsets.only(right: 5.0,),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Image.asset("lib/images/p_g.png", height: 130, width: 130, fit: BoxFit.cover,),
                        SizedBox(width: 20.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Roshan PG", style: AppWidget.semiBoldTextFieldStyle(),),
                            Text("Sector 2", style: AppWidget.LightTextFieldStyle(),),
                          ],
                        ),
                        SizedBox(width: 35,),
                        Icon(Icons.arrow_circle_right_outlined, color: Color(hexColor('#3787DD')), size: 45, ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.0,),
              Container(
                margin: EdgeInsets.only(right: 5.0,),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Image.asset("lib/images/p_g.png", height: 130, width: 130, fit: BoxFit.cover,),
                        SizedBox(width: 20.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Roshan PG", style: AppWidget.semiBoldTextFieldStyle(),),
                            Text("Sector 2", style: AppWidget.LightTextFieldStyle(),),
                          ],
                        ),
                        SizedBox(width: 35,),
                        Icon(Icons.arrow_circle_right_outlined, color: Color(hexColor('#3787DD')), size: 45, ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.0,),
              Container(
                margin: EdgeInsets.only(right: 5.0,),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Image.asset("lib/images/p_g.png", height: 130, width: 130, fit: BoxFit.cover,),
                        SizedBox(width: 20.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Roshan PG", style: AppWidget.semiBoldTextFieldStyle(),),
                            Text("Sector 2", style: AppWidget.LightTextFieldStyle(),),
                          ],
                        ),
                        SizedBox(width: 35,),
                        Icon(Icons.arrow_circle_right_outlined, color: Color(hexColor('#3787DD')), size: 45, ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  int hexColor(String color){
    String newColor = '0xff' + color;
    newColor = newColor.replaceAll('#', '');
    int finalColor = int.parse(newColor);
    return finalColor;
  }
}
