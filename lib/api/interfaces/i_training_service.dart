import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:gym/api/error_handler/error_handler.dart';
import 'package:gym/model/training.dart';

abstract class ITrainingService {
  Future<Either<ErrorHandler, List<Training>>> trainingByUser(int userId);
}
