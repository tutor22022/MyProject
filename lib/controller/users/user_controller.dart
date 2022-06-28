import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:newwa/model/users/user_model.dart';
import 'package:newwa/student/screens/level_sceen.dart';

class UserController extends GetxController{
  UserModel? user;
  
  final _userRef = FirebaseFirestore.instance.collection('Users');

  bool loadin = false;

  Future<void> signIn(String? name, String? pass) async{

    user = null;
    update();
    try{
      final result = await _userRef.where('user_longname', isEqualTo: name)
      .where('user_password',isEqualTo: pass).get();
      if(result.size >0){
        user = UserModel.fromJson(result.docs[0].data());
        if(user!.isEnable == false){
            Get.snackbar('خطأ', 'الحساب مقفل',snackPosition: SnackPosition.BOTTOM);
        }else{
          Get.off(LevelScreen());
                     //Get.snackbar('تسجيل الدخول', 'تم تسجيل الدخول بنجاح',snackPosition: SnackPosition.BOTTOM);

        }
      }else{
        Get.snackbar('خطأ', 'خطأ في أسم المستخم او كمة السر',snackPosition: SnackPosition.BOTTOM);
 
      }
    }catch(e){
       Get.snackbar('تسجي الدخول', 'تأكد من الأتصال بالأنترنت');
    }

  update();
  }

}