/// 所有网络响应数据的数据模型基类
abstract class BaseModel {
  int? code;
  String? msg;

  BaseModel({
    this.code,
    this.msg,
  });
}
