import 'package:moor_flutter/moor_flutter.dart';

import 'app_database.dart';

part 'user_local_dao.g.dart';

class UserLocals extends Table {
  IntColumn get user_id => integer()();
  TextColumn get user_name => text()();
  TextColumn get user_email => text()();
  TextColumn get user_password => text()();
  IntColumn get user_active => integer()();
  TextColumn get token => text()();
  TextColumn get refresh_token => text()();

  @override
  Set<Column> get primaryKey => {user_id};
}

@UseDao(tables: [UserLocals])
class UserLocalDao extends DatabaseAccessor<AppDatabase>
    with _$UserLocalDaoMixin {
  UserLocalDao(AppDatabase db) : super(db);

  Future<UserLocal> selectUser(int userId) =>
      (select(userLocals)..where((x) => x.user_id.equals(userId))).getSingle();
  Future insertUser(UserLocal data) => into(userLocals).insert(data);
  Future updateUser(UserLocal data) => update(userLocals).replace(data);
  Future deleteUser(UserLocal data) => delete(userLocals).delete(data);
}
