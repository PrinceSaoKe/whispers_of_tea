import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:whispers_of_tea/addons/app_data.dart';
import 'package:whispers_of_tea/model/commodity_by_id_model.dart';
import 'package:whispers_of_tea/model/commodity_list_by_page_model.dart';
import 'package:whispers_of_tea/model/login_model.dart';
import 'package:whispers_of_tea/model/simple_model.dart';
import 'package:whispers_of_tea/model/store_list_model.dart';
import 'package:whispers_of_tea/model/store_model.dart';

class AppNet {
  static Dio dio = Dio();

  static Options options = Options(
    headers: {'Token': AppData.getString(AppData.token)},
  );

  /// URL
  static late String baseUrl;

  static late String _loginUrl;
  static late String _registerUrl;
  static late String _sendPinUrl;
  static late String _queryByIdUrl;
  static late String _queryByPage;
  static late String _queryByStoreId;

  /// 动态获取baseUrl
  static getBaseUrl() async {
    Response response =
        await dio.get('https://princesaoke.github.io/PrinceSaoKe.txt');
    if (response.statusCode == 200) {
      Map map = jsonDecode(response.toString());
      String url = map['whispers_of_tea_base_url'];
      baseUrl = url;
    } else {
      baseUrl = 'https://i5101b0918.oicp.vip';
    }
    _getAllUrl();
  }

  /// 获取到baseUrl后为所有Url赋值
  static _getAllUrl() {
    _loginUrl = '$baseUrl/user/login';
    _registerUrl = '$baseUrl/user/register';
    _sendPinUrl = '$baseUrl/email/sendEmail';
    _queryByIdUrl = '$baseUrl/commodity/queryById';
    _queryByPage = '$baseUrl/commodity/queryByPage';
    _queryByStoreId = '$baseUrl/commodity/queryByStoreId';
  }

  /// 设置token
  static setToken(String token) {
    if (options.headers == null) {
      throw Exception('options.headers为null！');
    }
    options.headers?['Token'] = token;
  }

  /// 登录
  static Future<LoginModel> login({
    required String email,
    required String password,
  }) async {
    FormData formData = FormData.fromMap({
      'userEmail': email,
      'password': password,
    });
    Response response = await dio.post(_loginUrl, data: formData);
    LoginModel model = LoginModel.fromJson(response.data);
    // 若登录成功，更新token
    if (model.token != null) {
      setToken(model.token!);
      // 更新用户数据
      AppData.setString(AppData.userEmail, email);
    }
    return model;
  }

  /// 注册
  static Future<SimpleModel> register({
    required String email,
    required String password,
    bool isBusiness = false,
    required String pin,
  }) async {
    FormData formData = FormData.fromMap({
      'userEmail': email,
      'password': password,
      'type': isBusiness ? 2 : 1,
      'code': pin,
    });
    Response response = await dio.post(_registerUrl, data: formData);
    return SimpleModel.fromJson(response.data);
  }

  /// 发送验证码
  static Future<SimpleModel> sendPin({
    required String email,
  }) async {
    FormData formData = FormData.fromMap({'email': email});
    Response response = await dio.post(_sendPinUrl, data: formData);
    return SimpleModel.fromJson(response.data);
  }

  /// 获取商品信息 byId
  ///
  /// 调用前先登录
  static Future<CommodityModel> queryById({required String id}) async {
    String qbu = '$_queryByIdUrl/$id';
    Response response = await dio.get(qbu, options: options);
    CommodityModel model = CommodityModel.fromJson(response.data);
    return model;
  }

  /// 获取商品列表 byPage
  ///
  /// 调用前先登录
  static Future<CommodityListModel> queryByPage({required String id}) async {
    String qbu = '$_queryByPage/$id';
    Response response = await dio.get(qbu, options: options);
    CommodityListModel model = CommodityListModel.fromJson(response.data);
    return model;
  }

  /// 获取商品列表 byStoreId
  ///
  /// 调用前先登录
  static Future<CommodityListModel> queryByStoreId({required String id}) async {
    String qbu = '$_queryByStoreId/$id';
    Response response = await dio.get(qbu, options: options);
    CommodityListModel model = CommodityListModel.fromJson(response.data);
    return model;
  }

  /// 获取店铺
  ///
  /// 调用前先登录
  static Future<StoreDetailModel> getStore({required String id}) async {
    String qbu = '$_queryByStoreId/$id';
    Response response = await dio.get(qbu, options: options);
    StoreDetailModel model = StoreDetailModel.fromJson(response.data);
    return model;
  }

  /// 获取店铺列表
  ///
  /// 调用前先登录
  static Future<StoreListModel> getStoreList({required String id}) async {
    String qbu = '$_queryByStoreId/$id';
    Response response = await dio.get(qbu, options: options);
    StoreListModel model = StoreListModel.fromJson(response.data);
    return model;
  }
}
