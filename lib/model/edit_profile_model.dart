// ignore_for_file: unnecessary_question_mark, prefer_void_to_null

class EditProfileModel {
  UserLogin? userLogin;
  String? responseCode;
  String? result;
  String? responseMsg;

  EditProfileModel(
      {this.userLogin, this.responseCode, this.result, this.responseMsg});

  EditProfileModel.fromJson(Map<String, dynamic> json) {
    userLogin = json['UserLogin'] != null
        ? UserLogin.fromJson(json['UserLogin'])
        : null;
    responseCode = json['ResponseCode'];
    result = json['Result'];
    responseMsg = json['ResponseMsg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (userLogin != null) {
      data['UserLogin'] = userLogin!.toJson();
    }
    data['ResponseCode'] = responseCode;
    data['Result'] = result;
    data['ResponseMsg'] = responseMsg;
    return data;
  }
}

class UserLogin {
  String? id;
  String? name;
  String? email;
  String? mobile;
  String? password;
  String? rdate;
  String? status;
  String? ccode;
  String? code;
  Null? refercode;
  String? wallet;
  String? proPic;

  UserLogin(
      {this.id,
      this.name,
      this.email,
      this.mobile,
      this.password,
      this.rdate,
      this.status,
      this.ccode,
      this.code,
      this.refercode,
      this.wallet,
      this.proPic});

  UserLogin.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    password = json['password'];
    rdate = json['rdate'];
    status = json['status'];
    ccode = json['ccode'];
    code = json['code'];
    refercode = json['refercode'];
    wallet = json['wallet'];
    proPic = json['pro_pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['mobile'] = mobile;
    data['password'] = password;
    data['rdate'] = rdate;
    data['status'] = status;
    data['ccode'] = ccode;
    data['code'] = code;
    data['refercode'] = refercode;
    data['wallet'] = wallet;
    data['pro_pic'] = proPic;
    return data;
  }
}
