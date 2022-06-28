import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:newwa/controller/levels/level_controller.dart';
import 'package:newwa/model/level_model.dart';
import 'package:newwa/student/screens/subject_screen.dart';

class LevelScreen extends StatelessWidget {
  final LevelController levelcontroller = Get.put(LevelController());
  @override
  Widget build(BuildContext context) {
    //levelcontroller.getLevels();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 114, 208, 119),
        title: Center(
          child: Text('المرحلة الدراسية'),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(child: GetBuilder<LevelController>(
            builder: (controller) {
              if (controller.loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (controller.levelData.isEmpty) {
                return Center(
                  child: Text('لا يوجد تخصصات'),
                );
              }
              return ListView.builder(
                  itemCount: controller.levelData.length,
                  itemBuilder: (c, i) {
                    return InkWell(
                      onTap: () async {
                        await levelcontroller
                            .getSubjectById(controller.levelData[i].levelId)
                            .then((value) {
                          Get.to(SubjectScreen(
                            leveldata: controller.levelData[i],
                          ));
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Card(
                          color: Color.fromARGB(255, 63, 180, 156),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(children: [
                                  
                                  Image.asset(
                                    
                                    "assets/images/appIcon.png" ,
                                  ),
                                  Text(
                                    '${controller.levelData[i].levelName}',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Color(0xFFF8F6F6),
                                    ),
                                  )
                                ]),
                              )
                            ]),
                          ),
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
