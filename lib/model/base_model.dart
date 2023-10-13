/// 所有网络响应数据的数据模型基类
abstract class BaseModel {
  int? code;
  String? msg;

  BaseModel({
    required this.code,
    required this.msg,
  });
}
