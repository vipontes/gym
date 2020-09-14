import 'package:moor_flutter/moor_flutter.dart';

import 'moor_database.dart';

part 'training_dao.g.dart';

class Trainings extends Table {
  IntColumn get training_id => integer()();
  TextColumn get training_name => text()();
  DateTimeColumn get training_date => dateTime()();

  @override
  Set<Column> get primaryKey => {training_id};
}

@UseDao(tables: [Trainings])
class TrainingDao extends DatabaseAccessor<AppDatabase>
    with _$TrainingDaoMixin {
  TrainingDao(AppDatabase db) : super(db);

  Future<Training> selectTraining(int trainingId) =>
      (select(trainings)..where((x) => x.training_id.equals(trainingId)))
          .getSingle();

  Future insertTraining(Training data) => into(trainings).insert(data);
  Future updateTraining(Training data) => update(trainings).replace(data);
  Future deleteTraining(Training data) => delete(trainings).delete(data);
}
