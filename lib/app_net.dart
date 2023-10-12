import 'package:dio/dio.dart';
import 'package:whispers_of_tea/model/login_model.dart';
import 'package:whispers_of_tea/model/simple_model.dart';

import 'model/query_model.dart';

class AppNet {
  static Dio dio = Dio();

  static Options options = Options(headers: {'Token': ''});

  /// URL
  static const baseUrl = 'https://i5101b0918.oicp.vip';

  static const _loginUrl = '$baseUrl/user/login';
  static const _registerUrl = '$baseUrl/user/register';
  static const _queryByIdUrl = '$baseUrl/commodity/queryById';

  static const _sendPinUrl = '$baseUrl/email/sendEmail';
  // static const _sendPinUrl = '$baseUrl/email/sendEmail';
  // static const _getShopInfoUrl = '$baseUrl/email/sendEmail';

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
  static Future<QueryModel> queryById({
    required String id
  }) async {
    String token = "eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI4NTcyMjZjZjI0NzM0OWQ3YmY5NTgzMWY5ZGNkNTEzMSIsInN1YiI6IjEiLCJpc3MiOiJzZyIsImlhdCI6MTY5NzEyMTMyNywiZXhwIjoxNjk3MTI0OTI3fQ.0QK8K68ka7P2RSaDdJLwDBdczzTGxCAxfyCfw44vJnQ";
    _setToken(token);
    String qbu = _queryByIdUrl+'/'+id;
    Response response = await dio.get(qbu,options: options );
    print('---${response.data}----');
    QueryModel model = QueryModel.fromJson(response.data);
    return model;
  }
}
