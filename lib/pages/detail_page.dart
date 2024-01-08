import 'package:flutter/material.dart';

import '../components/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0,),
          child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new_outlined, color: Color(hexColor('#3787DD')),),
                ),
                SizedBox(height: 10,),
                Image.asset('lib/images/p_g.png', 
                  width: MediaQuery.of(context).size.width, 
                  height: MediaQuery.of(context).size.height/2.5, 
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 10,),
        
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Roshan PG", style: AppWidget.boldTextFieldStyle(),),
                      Text("Sector 2", style: AppWidget.LightTextFieldStyle(),),
                    ],
                  ),
        
                  Container(
                    child: Icon(Icons.sms, color: Color(hexColor('#3787DD')), size: 45, ),
                  )
                ],),
                SizedBox(height: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text("About", style: AppWidget.semiBoldTextFieldStyle(),),
                      SizedBox(height: 10,),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                        style: AppWidget.NormalTextFieldStyle(),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                          'Location',
                          style: AppWidget.NormalTextFieldStyle(),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        'Sharing',
                        style: AppWidget.NormalTextFieldStyle(),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        'Bed',
                        style: AppWidget.NormalTextFieldStyle(),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        'Almirah',
                        style: AppWidget.NormalTextFieldStyle(),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        'Television',
                        style: AppWidget.NormalTextFieldStyle(),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        'Wifi',
                        style: AppWidget.NormalTextFieldStyle(),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        'AC',
                        style: AppWidget.NormalTextFieldStyle(),
                      ),
                    ],
                  ),
              ],
            ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(hexColor('#eafaff')),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 25.0,
          ),
        ),
      ),
    );
  }

  int hexColor(String color) {
    String newColor = '0xff' + color;
    newColor = newColor.replaceAll('#', '');
    int finalColor = int.parse(newColor);
    return finalColor;
  }
}
