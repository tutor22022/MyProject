import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newwa/shared_widget/navigation_bar.dart';
import 'package:newwa/signwith_Screen.dart';

class WelcomeScreen extends StatefulWidget {
  // static const id = 'welcomeScreen';
  // const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      
      Get.offAll(NavigationBarScreen()); //النتقال من شاشه الى
     

    });

    super.initState();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          height: size.height,
          width: double.infinity,
          child: Stack(
            children: [
              Center(
                child: (
                    
                   Image.asset(
                  'assets/images/sharmk.png',
                  width: size.width * 0.6,
                )),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: (Image.asset(
                  'assets/images/main_top.png',
                  width: size.width * 0.3,
                )),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: (Image.asset(
                  'assets/images/main_bottom.png',
                  width: size.width * 0.3,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
