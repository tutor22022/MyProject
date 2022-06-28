import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newwa/login_screen.dart';
import 'package:newwa/shared_widget/components.dart';
import 'package:newwa/homeScreen.dart';
import 'package:newwa/teacher/create_acco_te.dart';


class SignWithScreen extends StatefulWidget {
  static const id = 'loginScreen';
  
  const SignWithScreen({Key? key}) : super(key: key);

  @override
  State<SignWithScreen> createState() => _SignWithScreenState();
}

class _SignWithScreenState extends State<SignWithScreen> {
  get white => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: size.height,
          width: double.infinity,
          child: Stack(children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Expanded(
                  child: SizedBox(), 
                ),
                Center(
                  child: Image.asset(
                    'assets/images/sharmce.png',
                    width: size.width /2,
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Text(
                  ": Login With ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                RoundeIconButton(
                  
                  onPressed:(){
                 Get.off(LoginScreen());
                },
                
                colour: Colors.teal,
                textColor: Colors.white,
                title: 'تسجيل الدخول ',
                buttonIcon: Icons.supervised_user_circle_sharp,
                iconColor: Colors.white,

                
                
                ),
                 RoundeIconButton(
                  onPressed:(){
                  Get.off(CreateTe());
                },
                
                colour: Colors.teal,
                textColor: Colors.white,
                title: '  إنشاء حساب جديد ',
                buttonIcon: Icons.create,
                iconColor: Colors.white ,

                 
                
                ),
                 RoundeIconButton(
                  onPressed:(){
                     print('cryt');
                  
                },
                
                colour: Colors.teal,
                textColor: Colors.white,
                title: '  انشاء حساب معلم',
                buttonIcon: Icons.create,
                iconColor: Colors.white,

                
                
                ),
                 Expanded(
                  child: SizedBox(),
                ),
               /* FlatButton(child: Text('Skip'),
                onPressed: (){
                  Navigator.pushNamed(context, HomeScreen.id);
                },
                ),
*/


              ],
            ),
          ]),
        ),
      ),
    );
  }
}
