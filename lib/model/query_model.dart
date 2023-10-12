import 'package:whispers_of_tea/model/base_model.dart';

class QueryModel extends BaseModel {
  QueryModel({super.code, super.msg});


  factory QueryModel.fromJson(Map? json) {
    if (json == null) {
      return QueryModel();
    }
    Map? data = json['data'];
    if (data == null) {
      return QueryModel(code: json['code'], msg: json['msg']);
    }
    return QueryModel(
      code: json['code'],
      msg: json['msg']
    );
  }
}
