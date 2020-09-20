import 'package:gym/database/token_local_dao.dart';
import 'package:gym/database/training_local_dao.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:gym/database/user_local_dao.dart';

part 'app_database.g.dart';

@UseMoor(
    tables: [TokenLocals, UserLocals, TrainingLocals],
    daos: [TokenLocalDao, UserLocalDao, TrainingLocalDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
            path: 'gym.sqlite', logStatements: false)));

  @override
  int get schemaVersion => 1;
}
