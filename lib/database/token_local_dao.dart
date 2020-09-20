import 'package:moor_flutter/moor_flutter.dart';

import 'app_database.dart';

part 'token_local_dao.g.dart';

class TokenLocals extends Table {
  TextColumn get token => text()();
  TextColumn get refresh_token => text()();

  @override
  Set<Column> get primaryKey => {token};
}

@UseDao(tables: [TokenLocals])
class TokenLocalDao extends DatabaseAccessor<AppDatabase>
    with _$TokenLocalDaoMixin {
  TokenLocalDao(AppDatabase db) : super(db);

  Future<TokenLocal> getToken() => select(tokenLocals).getSingle();
  Future insertToken(TokenLocal data) => into(tokenLocals).insert(data);
  Future deleteToken(TokenLocal data) => delete(tokenLocals).delete(data);
  Future deleteAll() => delete(tokenLocals).go();
}
