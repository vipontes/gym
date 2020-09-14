import 'package:gym/database/training_dao.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:gym/database/user_dao.dart';

part 'moor_database.g.dart';

@UseMoor(tables: [Users, Trainings], daos: [UserDao, TrainingDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'gym.sqlite',
          logStatements: false,
        )));

  @override
  int get schemaVersion => 1;
}
