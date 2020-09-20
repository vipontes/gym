import 'dart:async';

import 'package:dio/dio.dart';
import 'package:gym/util/constants.dart';
import 'package:gym/util/jwt_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppInterceptors extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
    if (options.headers.containsKey(Constants.requiresToken)) {
      options.headers.remove(Constants.requiresToken);

      final prefs = await SharedPreferences.getInstance();

      var token = prefs.get(Constants.token);
      final tokenDecoded = JwtHelper.parseJwt(token);
      var expiredAt = tokenDecoded[Constants.expiredAt];

      DateTime parsedDate =
          DateTime.fromMillisecondsSinceEpoch(expiredAt * 1000);
      final now = DateTime.now();
      var difference = parsedDate.difference(now).inSeconds;
      if (difference > 0) {
        options.headers.addAll({"Authorization": "Bearer $token"});
      } else {
        final refreshToken = prefs.get(Constants.refreshToken);
        final refreshTokenDecoded = JwtHelper.parseJwt(refreshToken);
        expiredAt = refreshTokenDecoded[Constants.expiredAt];
        parsedDate = DateTime.fromMillisecondsSinceEpoch(expiredAt * 1000);
        difference = parsedDate.difference(now).inSeconds;
        if (difference > 0) {
          // LoginService().refreshToken(refreshToken).then((res) async {
          //   var decodedResponse = res.fold((error) => error, (val) => val);
          //   if (decodedResponse is Usuario) {
          //     await LoginService().saveLocalUser(decodedResponse, blockDefined);
          //     token = decodedResponse.usuarioToken;
          //     options.headers.addAll({"Authorization": "Bearer $token"});
          //   } else {
          //     await LoginService().logout();
          //     navigatorKey.currentState.pushNamedAndRemoveUntil(
          //         Routes.login, (Route<dynamic> route) => false);
          //   }
          // });
        }
      }
    }

    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    return super.onError(err);
  }
}
