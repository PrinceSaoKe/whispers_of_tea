import 'package:whispers_of_tea/model/base_model.dart';
import 'package:whispers_of_tea/model/commodity_by_id_model.dart';

class CommodityListModel extends BaseModel {
  final List<CommodityModel>? records;
  final int? total;
  final int? size;
  final int? current;
  final List<dynamic>? orders;
  final bool? optimizeCountSql;
  final bool? searchCount;
  final dynamic countId;
  final dynamic maxLimit;
  final int? pages;

  CommodityListModel({
    super.code,
    super.msg,
    this.records,
    this.total,
    this.size,
    this.current,
    this.orders,
    this.optimizeCountSql,
    this.searchCount,
    this.countId,
    this.maxLimit,
    this.pages,
  });

  factory CommodityListModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return CommodityListModel();
    }

    // 当查询一个不存在的商品时，data可能不存在
    Map<String, dynamic>? data = json['data'];
    if (data == null) {
      return CommodityListModel(code: json['code'], msg: json['msg']);
    }

    final List<dynamic> recordList = data['records'] as List<dynamic>;
    final List<CommodityModel> products = recordList.map((record) {
      return CommodityModel.fromMap(record as Map<String, dynamic>);
    }).toList();

    return CommodityListModel(
      code: json['code'],
      msg: json['msg'],
      records: products,
      total: json['total'],
      size: json['size'],
      current: json['current'],
      orders: json['orders'],
      optimizeCountSql: json['optimizeCountSql'],
      searchCount: json['searchCount'],
      countId: json['countId'],
      maxLimit: json['maxLimit'],
      pages: json['pages'],
    );
  }
}
