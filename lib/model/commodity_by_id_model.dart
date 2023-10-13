import 'package:whispers_of_tea/model/base_model.dart';

class CommodityModel extends BaseModel{
  final int id;
  final int storeId;
  final String name;
  final double price;
  final String link;
  final String description;
  final List<String>? imageList;

  CommodityModel({
    required this.id,
    required this.storeId,
    required this.name,
    required this.price,
    required this.link,
    required this.description,
    this.imageList,
  });

  factory CommodityModel.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> data = json['data'];

    return CommodityModel(
      id: data['id'],
      storeId: data['storeId'],
      name: data['name'],
      price: data['price'].toDouble(),
      link: data['link'],
      description: data['description'],
      imageList: data['imageList'] != null
          ? List<String>.from(data['imageList'])
          : null,
    );
  }
}
