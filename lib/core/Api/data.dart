import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:run_down/core/Api/url.dart';
import 'package:run_down/model/user_sign_up_model/user_sign_up_model.dart';

abstract class Api {
  Future<bool?> checkUserExist(UserSignUpModel value);
  Future<bool?> verifyOtp(UserSignUpModel value);
}

class RunDownDb extends Api {
  final dio = Dio();
  final url = Url();
  RunDownDb() {
    dio.options = BaseOptions(
      baseUrl: url.baseUrl,
      responseType: ResponseType.plain,
    );
  }
  @override
  Future<bool?> checkUserExist(UserSignUpModel value) async {
    try {
      final _result = await dio.post(url.checkUserexist, data: value.toJson());
      if (_result.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } on DioError catch (e) {
      log(e.toString());
    }
    return null;
  }

  @override
  Future<bool?> verifyOtp(UserSignUpModel value) async {
   try {
      final _result = await dio.post(url.verifyOtp, data: value.toJson());
      if (_result.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } on DioError catch (e) {
      log(e.toString());
    }
    return null;
  }
}
