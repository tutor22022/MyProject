import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newwa/controller/levels/level_controller.dart';
import 'package:newwa/model/level_model.dart';
import 'package:newwa/model/subject_model.dart';

class SubjectScreen extends StatelessWidget {
  final LevelModel? leveldata;
  SubjectScreen({this.leveldata});
  final LevelController levelController = Get.put(LevelController());

  @override
  Widget build(BuildContext context) {
    levelController.getSubjectById(leveldata!.levelId);
    print(leveldata!.levelId);
    return Scaffold(
      appBar: AppBar(
        shape: Border.all(
            color: Colors.red), //من هذا المكان يتم التعديل على الشريط العلوي

        backgroundColor: Color.fromARGB(255, 144, 208, 119),

        title: Center(
          child: Text('قسم ${leveldata!.levelName} '),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(child: GetBuilder<LevelController>(
            builder: (controller) {
              if (controller.loading2) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (controller.subjectData.isEmpty) {
                return Center(
                  child: Text('لا يوجد تخصصات'),
                );
              }
              return ListView.builder(
                  itemCount: controller.subjectData.length,
                  itemBuilder: (c, i) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Card(
                        color: Color.fromARGB(255, 248, 249,
                            249), //من هذا المكان يتم التعديلل في شكل عرض المواد

                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(children:[
                            
                            Image.asset('assets/images/math.png'),
                            Text(
                              '${controller.subjectData[i].sub_name}',
                              style:
                               TextStyle(fontSize: 30, color: Colors.red,),
                               
                            ),
                          ]),
                        ),
                      ),
                    );
                  });
            },
          )),
        ],
      )),
    );
  }
}
