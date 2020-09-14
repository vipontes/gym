import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:gym/database/usuario_dao.dart';

part 'moor_database.g.dart';

@UseMoor(tables: [UsuarioLocals], daos: [UsuarioLocalDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'gym.sqlite',
          logStatements: false,
        )));

  @override
  int get schemaVersion => 1;
}
