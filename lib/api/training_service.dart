import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gym/api/error_handler/error_handler.dart';
import 'package:gym/api/interceptor/app_interceptors.dart';
import 'package:gym/api/interfaces/i_training_service.dart';
import 'package:gym/model/training.dart';

import '../util/constants.dart';

class TrainingService implements ITrainingService {
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

  static final TrainingService _singleton = new TrainingService._internal();

  factory TrainingService() {
    return _singleton;
  }

  TrainingService._internal() {
    addInterceptors(dio);
  }

  @override
  Future<Either<ErrorHandler, List<Training>>> trainingByUser(
      int userId) async {
    Options options = Options(headers: {
      Constants.requiresToken: true,
    });

    try {
      Response response =
          await dio.get("/training/user/$userId", options: options);

      if (response.statusCode == 200) {
        List<Training> data = Training.listFromJson(response.data);
        return Right(data);
      } else {
        final Map<String, dynamic> decodedMessage =
            json.decode(response.toString());

        return Left(
            ErrorHandler(response.statusCode, decodedMessage['message']));
      }
    } on DioError catch (error) {
      return Left(ErrorHandler(500, error.message));
    }
  }
}
