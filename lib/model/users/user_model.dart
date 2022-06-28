class UserModel {
  String? userId;
  String? userName;
  String? logName;
  String? empId;
  String? userPassword;
  int? userPhone;
  bool isEnable=true;

  UserModel({this.userId,this.userName,this.logName,this.empId,
    this.userPassword,this.userPhone,this.isEnable=false});

  UserModel.fromJson(Map<String, dynamic> map) {
    userId = map['user_id'];
    userName = map['user_name'];
    logName = map['user_longname'];
    userPassword = map['user_password'];
    userPhone = map['user_phone'];
    isEnable = map['is_enable'];

  }

  Map<String, dynamic> toJson() {
    return {
      "user_id": userId,
      "user_name": userName,
      "user_longname": logName,
      "user_password": userPassword,
      "user_phone": userPhone,
      "is_enable": isEnable,

    };
  }
}