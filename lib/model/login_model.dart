import 'package:whispers_of_tea/model/base_model.dart';

class LoginModel extends BaseModel {
  LoginModel({super.code, super.msg, this.token});

  final String? token;

  factory LoginModel.fromJson(Map? json) {
    if (json == null) {
      return LoginModel();
    }
    Map? data = json['data'];
    if (data == null) {
      return LoginModel(code: json['code'], msg: json['msg']);
    }
    return LoginModel(
      code: json['code'],
      msg: json['msg'],
      token: json['token'],
    );
  }
}
