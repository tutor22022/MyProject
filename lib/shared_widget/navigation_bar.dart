import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newwa/signwith_Screen.dart';
import 'package:newwa/student/screens/level_sceen.dart';
import 'package:newwa/student/screens/reserve.dart';
import 'package:newwa/teacher/message.dart';

class NavigationBarScreen extends StatefulWidget {
  @override
  _NavigationBarScreenState createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [
          Reserve(),
          LevelScreen(),
          SignWithScreen(),
          Message(),
        ],
        index: selected,
      ),
      /* bottomNavigationBar: CurvedNavigationBar(

            color: Color.fromARGB(255, 46, 176, 39),
            backgroundColor: Colors.white,

            height:60,
            
            
            
            animationDuration: Duration(milliseconds: 150),


            items: [

              Icon(
                Icons.home,
                size: 25,
                color: Colors.white,
                

              ),
               Icon(
                Icons.cached,
                size: 25,
                color: Colors.white,
                

              ),
               Icon(
                Icons.supervised_user_circle,
                size: 25,
                color: Colors.white,
                

              ),
              Icon(
                Icons.message,
                size: 25,
                color: Colors.white,
              ),

            ],*/

      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Color.fromARGB(255, 31, 154, 76),
        height: 70,
        initialActiveIndex: 1,
        // cornerRadius:,
        onTap: (n) {
          setState(() {
            selected = n;
          });
        },
        items: [
          TabItem(
            icon: Icon(Icons.cached),
            title: 'الحجوزات,',
          ),
          TabItem(
            icon: Icon(Icons.home),
            title: 'الرئيسية',
          ),
          TabItem(
            icon: Icon(Icons.supervised_user_circle),
            title: 'الحساب',
          ),
          TabItem(
            icon: Icon(Icons.message),
            title: 'المحادثات',
          ),
        ],
      ),
    );
  }
}
