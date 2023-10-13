import 'package:whispers_of_tea/model/base_model.dart';

class CommodityModel extends BaseModel {
  final int? id;
  final int? storeId;
  final String? name;
  final double? price;
  final String? link;
  final String? description;
  final String? coverImage;
  final List<String>? imageList;

  CommodityModel({
    super.code,
    super.msg,
    this.id,
    this.storeId,
    this.name,
    this.price,
    this.link,
    this.description,
    this.coverImage,
    this.imageList,
  });

  factory CommodityModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return CommodityModel();
    }

    // 当查询一个不存在的商品时，data可能不存在
    Map<String, dynamic>? data = json['data'];
    if (data == null) {
      return CommodityModel(code: json['code'], msg: json['msg']);
    }

    return CommodityModel(
      code: json['code'],
      msg: json['msg'],
      id: data['id'],
      storeId: data['storeId'],
      name: data['name'],
      price: double.tryParse(data['price'].toString()),
      link: data['link'],
      description: data['description'],
      coverImage: data['coverImage'],
      imageList:
          data['imageList'] == null ? [] : List<String>.from(data['imageList']),
    );
  }

  factory CommodityModel.fromMap(Map map) {
    return CommodityModel(
      id: map['id'],
      storeId: map['storeId'],
      name: map['name'],
      price: double.tryParse(map['price'].toString()),
      link: map['link'],
      description: map['description'],
      coverImage: map['coverImage'],
      imageList:
          map['imageList'] == null ? [] : List<String>.from(map['imageList']),
    );
  }
}
