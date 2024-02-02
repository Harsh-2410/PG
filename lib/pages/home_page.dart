import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pg_finder/components/widget_support.dart';
import 'package:pg_finder/pages/detail_page.dart';


class HomePage extends StatelessWidget {
   HomePage({super.key});


   final searchController = TextEditingController();

   void signUserOut(){
     FirebaseAuth.instance.signOut();
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Hi Raj,",
                    style: AppWidget.HeadlineTextFieldStyle()
                ),
                IconButton(onPressed: signUserOut, icon: Icon(Icons.logout)
                ),
              ],
            ),
            SizedBox(height: 20.0,),

            Text("Are you looking for pg?",
                style: AppWidget.LightTextFieldStyle()
            ),

            SizedBox(height: 20.0,),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 270,
                  decoration: BoxDecoration(
                    color: Color(hexColor('#eafaff')),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                SizedBox(width: 20.0,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(hexColor('#eafaff')),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.search_rounded, color: Color(hexColor('#3787DD')), size: 45, ),
                ),
              ],
            ),

            SizedBox(height: 20.0,),

            Text("Popular", style: AppWidget.boldTextFieldStyle(),),

            SizedBox(height: 10.0,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("lib/images/p_g.png", height: 200, width: 200, fit: BoxFit.cover,),

                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Roshan PG", style: AppWidget.semiBoldTextFieldStyle(),),
                                      Text("Sector 2", style: AppWidget.LightTextFieldStyle(),),
                                    ],
                                  ),
                                  SizedBox(width: 40.0,),
                                  Icon(Icons.arrow_circle_right_outlined, color: Color(hexColor('#3787DD')), size: 45, ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("lib/images/p_g.png", height: 200, width: 200, fit: BoxFit.cover,),

                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Roshan PG", style: AppWidget.semiBoldTextFieldStyle(),),
                                  Text("Sector 2", style: AppWidget.LightTextFieldStyle(),),
                                ],
                              ),
                              SizedBox(width: 40.0,),
                              Icon(Icons.arrow_circle_right_outlined, color: Color(hexColor('#3787DD')), size: 45, ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 5.0,),
            Text("Recommended", style: AppWidget.boldTextFieldStyle(),),
            SizedBox(height: 5.0,),

            Container(
              margin: EdgeInsets.only(right: 10.0,),
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
    );
  }

   int hexColor(String color){
     String newColor = '0xff' + color;
     newColor = newColor.replaceAll('#', '');
     int finalColor = int.parse(newColor);
     return finalColor;
   }
}
