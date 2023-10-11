import 'package:whispers_of_tea/model/base_model.dart';

class SimpleModel extends BaseModel {
  SimpleModel({super.code, super.msg});

  factory SimpleModel.fromJson(Map? json) {
    if (json == null) {
      return SimpleModel();
    }
    return SimpleModel(
      code: json['code'],
      msg: json['msg'],
    );
  }
}
