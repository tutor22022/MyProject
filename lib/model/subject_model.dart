class SubjectModel {
  String? sub_id;
  String? sub_name;
  

  SubjectModel({this.sub_id, this.sub_name});

  SubjectModel.fromJson(Map<String, dynamic> map) {
    sub_id = map['sub_id'];
    sub_name = map['sub_name'];
    

  }

  Map<String, dynamic> toJson() {
    return {
      "sub_id": sub_id,
      "sub_name": sub_name,
      
    };
  }
}