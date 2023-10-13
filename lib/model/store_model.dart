import 'package:whispers_of_tea/model/base_model.dart';

class StoreDetailModel extends BaseModel{
  final int id;
  final String name;
  final String link;
  final String description;
  final List<String> imageList;

  StoreDetailModel({
    required this.id,
    required this.name,
    required this.link,
    required this.description,
    required this.imageList,
  });

  factory StoreDetailModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> imageList = json['imageList'] as List<dynamic>;
    final List<String> images = imageList.map((imageUrl) {
      return imageUrl as String;
    }).toList();

    return StoreDetailModel(
      id: json['id'],
      name: json['name'],
      link: json['link'],
      description: json['description'],
      imageList: images,
    );
  }
}
