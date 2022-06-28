import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:newwa/model/level_model.dart';
import 'package:newwa/model/subject_model.dart';

class LevelController extends GetxController{



    final _levelRef = FirebaseFirestore.instance.collection('level');

  bool loading = false;

  List<LevelModel> _levelData =[];
  List<LevelModel> get levelData => _levelData;

Future<void> getLevels() async{
  loading = true;
  _levelData.clear();
  final data = await _levelRef.get();
  _levelData= data.docs.map((e) {
      return LevelModel.fromJson(e.data());
  }).toList();
  update();
  loading=false;
}


List<SubjectModel> _subjectData =[];
  List<SubjectModel> get subjectData => _subjectData;
  bool loading2 = false;

Future<void> getSubjectById(String? levelId) async{
  loading2 = true;
  _subjectData.clear();
  final data =  await _levelRef.doc(levelId).collection('subject').get();
  _subjectData= data.docs.map((e) {
      return SubjectModel.fromJson(e.data());
  }).toList();
  update();
  loading2=false;
}

// Future<void> add() async{
 
//  final data2= SubjectModel(
//     sub_name: 'اجتماعيات'
//  );
//  final id = await _levelRef.doc('WVCwN14Y5qkINKwrQZnL').collection('subject').add(data2.toJson());
//  await _levelRef.doc('WVCwN14Y5qkINKwrQZnL').collection('subject').doc(id.id).update({'sub_id':id.id});
// }
@override
  void onInit() {
    getLevels();
    super.onInit();
  }
  
}