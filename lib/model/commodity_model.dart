import 'package:whispers_of_tea/model/base_model.dart';

class CommodityModel extends BaseModel {
  CommodityModel({super.code, super.msg});

  factory CommodityModel.fromJson(Map? json) {
    if (json == null) {
      return CommodityModel();
    }
    return CommodityModel(
      code: json['code'],
      msg: json['msg'],
    );
  }
}
