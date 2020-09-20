import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gym/api/error_handler/error_handler.dart';
import 'package:gym/api/interceptor/app_interceptors.dart';
import 'package:gym/api/interfaces/i_login_service.dart';
import 'package:gym/gym_app.dart';
import 'package:gym/model/token.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gym/database/app_database.dart';
import '../util/constants.dart';

class LoginService implements ILoginService {
  Dio dio = new Dio(
    new BaseOptions(
      baseUrl: Constants.baseUrl,
      connectTimeout: Constants.connectTimeout,
      receiveTimeout: Constants.receiveTimeout,
      validateStatus: (status) {
        return status <= 500;
      },
    ),
  );

  Dio addInterceptors(Dio dio) {
    dio.interceptors.add(AppInterceptors());
  }

  static final LoginService _singleton = new LoginService._internal();

  factory LoginService() {
    return _singleton;
  }

  LoginService._internal() {
    addInterceptors(dio);
  }

  @override
  Future<Either<ErrorHandler, Token>> login(
      String userEmail, String userPassword) async {
    try {
      Response response = await dio.post("/login",
          data: {'user_email': userEmail, 'user_password': userPassword});

      if (response.statusCode == 200) {
        Token tokens = Token.fromJson(response.data);
        return Right(tokens);
      } else {
        final Map<String, dynamic> decodedMessage =
            json.decode(response.toString());

        return Left(ErrorHandler(response.statusCode, decodedMessage['msg']));
      }
    } on DioError catch (error) {
      return Left(ErrorHandler(500, error.message));
    }
  }

  @override
  Future<void> logout() async {
    final database = Provider.of<AppDatabase>(navigatorKey.currentContext);

    final prefs = await SharedPreferences.getInstance();
    prefs.remove(Constants.isLoggedIn);
    return null;
  }
}
