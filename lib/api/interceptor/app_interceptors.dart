import 'dart:async';

import 'package:dio/dio.dart';

class AppInterceptors extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
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
