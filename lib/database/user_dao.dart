import 'package:moor_flutter/moor_flutter.dart';

import 'moor_database.dart';

part 'user_dao.g.dart';

class Users extends Table {
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

@UseDao(tables: [Users])
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin {
  UserDao(AppDatabase db) : super(db);

  Future<User> selectUser(int userId) =>
      (select(users)..where((x) => x.user_id.equals(userId))).getSingle();

  Future insertUser(User data) => into(users).insert(data);
  Future updateUser(User data) => update(users).replace(data);
  Future deleteUser(User data) => delete(users).delete(data);
}
