import 'package:moor_flutter/moor_flutter.dart';

import 'app_database.dart';

part 'training_local_dao.g.dart';

class TrainingLocals extends Table {
  IntColumn get training_id => integer()();
  IntColumn get user_id => integer()();
  DateTimeColumn get training_date => dateTime()();
  TextColumn get training_description => text()();

  @override
  Set<Column> get primaryKey => {training_id};
}

@UseDao(tables: [TrainingLocals])
class TrainingLocalDao extends DatabaseAccessor<AppDatabase>
    with _$TrainingLocalDaoMixin {
  TrainingLocalDao(AppDatabase db) : super(db);

  Future<TrainingLocal> selectTraining(int trainingId) =>
      (select(trainingLocals)..where((x) => x.training_id.equals(trainingId)))
          .getSingle();
  Future insertTraining(TrainingLocal data) =>
      into(trainingLocals).insert(data);
  Future updateTraining(TrainingLocal data) =>
      update(trainingLocals).replace(data);
  Future deleteTraining(TrainingLocal data) =>
      delete(trainingLocals).delete(data);
  Future deleteAll() => delete(trainingLocals).go();
}
