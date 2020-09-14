import 'package:moor_flutter/moor_flutter.dart';

import 'moor_database.dart';

part 'usuario_dao.g.dart';

class UsuarioLocals extends Table {
  IntColumn get usuario_id => integer()();
  TextColumn get usuario_nome => text()();

  @override
  Set<Column> get primaryKey => {usuario_id};
}

@UseDao(tables: [UsuarioLocals])
class UsuarioLocalDao extends DatabaseAccessor<AppDatabase> with _$UsuarioLocalDaoMixin {
  UsuarioLocalDao(AppDatabase db) : super(db);

  Future<UsuarioLocal> getCountry(int usuarioId) =>
      (select(usuarioLocals)..where((x) => x.usuario_id.equals(usuarioId))).getSingle();

  Future insertItem(UsuarioLocal data) => into(usuarioLocals).insert(data);
  Future updateItem(UsuarioLocal data) => update(usuarioLocals).replace(data);
  Future deleteItem(UsuarioLocal data) => delete(usuarioLocals).delete(data);
}
