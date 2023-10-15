import 'package:dio/dio.dart';
import 'package:whispers_of_tea/model/commodity_by_id_model.dart';
import 'package:whispers_of_tea/model/login_model.dart';
import 'package:whispers_of_tea/model/simple_model.dart';
import 'package:whispers_of_tea/model/store_model.dart';

import 'model/commodity_list_by_page_model.dart';
import 'model/store_list_model.dart';

class AppNet {
  static Dio dio = Dio();

  static Options options = Options(headers: {'Token': ''});

  /// URL
  static const baseUrl = 'https://i5101b0918.oicp.vip';

  static const _loginUrl = '$baseUrl/user/login';
  static const _registerUrl = '$baseUrl/user/register';
  static const _sendPinUrl = '$baseUrl/email/sendEmail';
  static const _queryByIdUrl = '$baseUrl/commodity/queryById';
  static const _queryByPage = '$baseUrl/commodity/queryByPage';
  static const _queryByStoreId = '$baseUrl/commodity/queryByStoreId';

  /// 设置token
  static _setToken(String token) {
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
    // 更新token
    if (model.token != null) {
      _setToken(model.token!);
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
    print(response.data);
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
