import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newwa/controller/levels/level_controller.dart';
import 'package:newwa/controller/users/user_controller.dart';
import 'package:newwa/shared_widget/custom_text_field.dart';


class LoginScreen extends StatelessWidget {
  int _currentIndex=0;

  final formKey = GlobalKey<FormState>();
  String name = '';
  String password = '';
 final LevelController levelcontroller= Get.put(LevelController());

 final UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 114, 208, 119),
       title: Text('تسجيل الدخول',style:TextStyle(color: Colors.black) ,),
      ),
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(children: [
              
              CustomTextField(
                
                title: 'أسم المستخدم',
                validate:
                
                 (String? val){
                  if(val!.trim().toString().isEmpty){
                    return 'يرجى أدخال أسم المستخدم';
                  }
                  return null;
                },
                onSave: (String? val){
                name = val!.trim();
                },
               
                
              ),
              CustomTextField(

                title: 'كلمة المرور',
                validate: (String? val){
                  if(val!.trim().toString().isEmpty){
                    return 'يرجى أدخال  كلمة المرور';
                  }
                  return null;
                },
                onSave: (String? val){
                password = val!.trim();
                },
               
                
              ),
              ElevatedButton(
                onPressed: (){
          // levelcontroller.add();
                   if(formKey.currentState!.validate()){
                     formKey.currentState!.save();
                 userController.signIn(name, password);

                   }
                }, 
                
                child: Text('دخول'),),
            ]),
          ),
        ),
      ),
      
      

    );
  }
}