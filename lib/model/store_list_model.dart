import 'package:whispers_of_tea/model/store_model.dart';

class StoreListModel {
  final List<StoreDetailModel> records;
  final int total;
  final int size;
  final int current;
  final List<dynamic> orders;
  final bool optimizeCountSql;
  final bool searchCount;
  final dynamic countId;
  final dynamic maxLimit;
  final int pages;

  StoreListModel({
    required this.records,
    required this.total,
    required this.size,
    required this.current,
    required this.orders,
    required this.optimizeCountSql,
    required this.searchCount,
    required this.countId,
    required this.maxLimit,
    required this.pages,
  });

  factory StoreListModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> recordList = json['records'] as List<dynamic>;
    final List<StoreDetailModel> stores = recordList.map((record) {
      return StoreDetailModel.fromJson(record as Map<String, dynamic>);
    }).toList();

    return StoreListModel(
      records: stores,
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