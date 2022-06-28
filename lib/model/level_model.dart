class LevelModel {
  String? levelId;
  String? levelName;
  

  LevelModel({this.levelId, this.levelName});

  LevelModel.fromJson(Map<String, dynamic> map) {
    levelId = map['level_id'];
    levelName = map['level_name'];
    

  }

  Map<String, dynamic> toJson() {
    return {
      "level_id": levelId,
      "level_name": levelName,
      
    };
  }
}