import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:gym/api/error_handler/error_handler.dart';
import 'package:gym/model/token.dart';

abstract class ILoginService {
  Future<Either<ErrorHandler, Token>> login(String userEmail, String userPassword);
}
