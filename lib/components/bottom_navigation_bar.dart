import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../pages/favourite_page.dart';
import '../pages/home_page.dart';
import '../pages/notification_page.dart';
import '../pages/profile_page.dart';


class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  final user= FirebaseAuth.instance.currentUser!;

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int currentTabIndex=0;

  void goToPage(index){
    setState(() {
      currentTabIndex=index;
    });
  }

  List _pages = [
    // home page
    HomePage(),
    // favourite page
    Favorite(),
    // notification page
    Notify(),
    // profile page
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentTabIndex],
      bottomNavigationBar: Container(
        color: Color(hexColor('#eafaff')),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 8.0,
          ),
          child: GNav(
            backgroundColor: Color(hexColor('#eafaff')),
            color: Color(hexColor('#3787DD')),
            activeColor: Color(hexColor('#3787DD')),
            tabBackgroundColor: Color(hexColor('#d2f5fe')),
            gap: 8,
            padding: EdgeInsets.all(16),
            onTabChange: (index)=> goToPage(index),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'favorite',
              ),
              GButton(
                icon: Icons.notifications_none_sharp,
                text: 'Notification',
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Profile',
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
