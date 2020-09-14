// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final int user_id;
  final String user_name;
  final String user_email;
  final String user_password;
  final int user_active;
  final String token;
  final String refresh_token;
  User(
      {@required this.user_id,
      @required this.user_name,
      @required this.user_email,
      @required this.user_password,
      @required this.user_active,
      @required this.token,
      @required this.refresh_token});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return User(
      user_id:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      user_name: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_name']),
      user_email: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_email']),
      user_password: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_password']),
      user_active: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_active']),
      token:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}token']),
      refresh_token: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}refresh_token']),
    );
  }
  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      user_id: serializer.fromJson<int>(json['user_id']),
      user_name: serializer.fromJson<String>(json['user_name']),
      user_email: serializer.fromJson<String>(json['user_email']),
      user_password: serializer.fromJson<String>(json['user_password']),
      user_active: serializer.fromJson<int>(json['user_active']),
      token: serializer.fromJson<String>(json['token']),
      refresh_token: serializer.fromJson<String>(json['refresh_token']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'user_id': serializer.toJson<int>(user_id),
      'user_name': serializer.toJson<String>(user_name),
      'user_email': serializer.toJson<String>(user_email),
      'user_password': serializer.toJson<String>(user_password),
      'user_active': serializer.toJson<int>(user_active),
      'token': serializer.toJson<String>(token),
      'refresh_token': serializer.toJson<String>(refresh_token),
    };
  }

  @override
  UsersCompanion createCompanion(bool nullToAbsent) {
    return UsersCompanion(
      user_id: user_id == null && nullToAbsent
          ? const Value.absent()
          : Value(user_id),
      user_name: user_name == null && nullToAbsent
          ? const Value.absent()
          : Value(user_name),
      user_email: user_email == null && nullToAbsent
          ? const Value.absent()
          : Value(user_email),
      user_password: user_password == null && nullToAbsent
          ? const Value.absent()
          : Value(user_password),
      user_active: user_active == null && nullToAbsent
          ? const Value.absent()
          : Value(user_active),
      token:
          token == null && nullToAbsent ? const Value.absent() : Value(token),
      refresh_token: refresh_token == null && nullToAbsent
          ? const Value.absent()
          : Value(refresh_token),
    );
  }

  User copyWith(
          {int user_id,
          String user_name,
          String user_email,
          String user_password,
          int user_active,
          String token,
          String refresh_token}) =>
      User(
        user_id: user_id ?? this.user_id,
        user_name: user_name ?? this.user_name,
        user_email: user_email ?? this.user_email,
        user_password: user_password ?? this.user_password,
        user_active: user_active ?? this.user_active,
        token: token ?? this.token,
        refresh_token: refresh_token ?? this.refresh_token,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('user_id: $user_id, ')
          ..write('user_name: $user_name, ')
          ..write('user_email: $user_email, ')
          ..write('user_password: $user_password, ')
          ..write('user_active: $user_active, ')
          ..write('token: $token, ')
          ..write('refresh_token: $refresh_token')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      user_id.hashCode,
      $mrjc(
          user_name.hashCode,
          $mrjc(
              user_email.hashCode,
              $mrjc(
                  user_password.hashCode,
                  $mrjc(user_active.hashCode,
                      $mrjc(token.hashCode, refresh_token.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.user_id == this.user_id &&
          other.user_name == this.user_name &&
          other.user_email == this.user_email &&
          other.user_password == this.user_password &&
          other.user_active == this.user_active &&
          other.token == this.token &&
          other.refresh_token == this.refresh_token);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> user_id;
  final Value<String> user_name;
  final Value<String> user_email;
  final Value<String> user_password;
  final Value<int> user_active;
  final Value<String> token;
  final Value<String> refresh_token;
  const UsersCompanion({
    this.user_id = const Value.absent(),
    this.user_name = const Value.absent(),
    this.user_email = const Value.absent(),
    this.user_password = const Value.absent(),
    this.user_active = const Value.absent(),
    this.token = const Value.absent(),
    this.refresh_token = const Value.absent(),
  });
  UsersCompanion.insert({
    @required int user_id,
    @required String user_name,
    @required String user_email,
    @required String user_password,
    @required int user_active,
    @required String token,
    @required String refresh_token,
  })  : user_id = Value(user_id),
        user_name = Value(user_name),
        user_email = Value(user_email),
        user_password = Value(user_password),
        user_active = Value(user_active),
        token = Value(token),
        refresh_token = Value(refresh_token);
  UsersCompanion copyWith(
      {Value<int> user_id,
      Value<String> user_name,
      Value<String> user_email,
      Value<String> user_password,
      Value<int> user_active,
      Value<String> token,
      Value<String> refresh_token}) {
    return UsersCompanion(
      user_id: user_id ?? this.user_id,
      user_name: user_name ?? this.user_name,
      user_email: user_email ?? this.user_email,
      user_password: user_password ?? this.user_password,
      user_active: user_active ?? this.user_active,
      token: token ?? this.token,
      refresh_token: refresh_token ?? this.refresh_token,
    );
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _user_idMeta = const VerificationMeta('user_id');
  GeneratedIntColumn _user_id;
  @override
  GeneratedIntColumn get user_id => _user_id ??= _constructUserId();
  GeneratedIntColumn _constructUserId() {
    return GeneratedIntColumn(
      'user_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _user_nameMeta = const VerificationMeta('user_name');
  GeneratedTextColumn _user_name;
  @override
  GeneratedTextColumn get user_name => _user_name ??= _constructUserName();
  GeneratedTextColumn _constructUserName() {
    return GeneratedTextColumn(
      'user_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _user_emailMeta = const VerificationMeta('user_email');
  GeneratedTextColumn _user_email;
  @override
  GeneratedTextColumn get user_email => _user_email ??= _constructUserEmail();
  GeneratedTextColumn _constructUserEmail() {
    return GeneratedTextColumn(
      'user_email',
      $tableName,
      false,
    );
  }

  final VerificationMeta _user_passwordMeta =
      const VerificationMeta('user_password');
  GeneratedTextColumn _user_password;
  @override
  GeneratedTextColumn get user_password =>
      _user_password ??= _constructUserPassword();
  GeneratedTextColumn _constructUserPassword() {
    return GeneratedTextColumn(
      'user_password',
      $tableName,
      false,
    );
  }

  final VerificationMeta _user_activeMeta =
      const VerificationMeta('user_active');
  GeneratedIntColumn _user_active;
  @override
  GeneratedIntColumn get user_active => _user_active ??= _constructUserActive();
  GeneratedIntColumn _constructUserActive() {
    return GeneratedIntColumn(
      'user_active',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tokenMeta = const VerificationMeta('token');
  GeneratedTextColumn _token;
  @override
  GeneratedTextColumn get token => _token ??= _constructToken();
  GeneratedTextColumn _constructToken() {
    return GeneratedTextColumn(
      'token',
      $tableName,
      false,
    );
  }

  final VerificationMeta _refresh_tokenMeta =
      const VerificationMeta('refresh_token');
  GeneratedTextColumn _refresh_token;
  @override
  GeneratedTextColumn get refresh_token =>
      _refresh_token ??= _constructRefreshToken();
  GeneratedTextColumn _constructRefreshToken() {
    return GeneratedTextColumn(
      'refresh_token',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        user_id,
        user_name,
        user_email,
        user_password,
        user_active,
        token,
        refresh_token
      ];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(UsersCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.user_id.present) {
      context.handle(_user_idMeta,
          user_id.isAcceptableValue(d.user_id.value, _user_idMeta));
    } else if (isInserting) {
      context.missing(_user_idMeta);
    }
    if (d.user_name.present) {
      context.handle(_user_nameMeta,
          user_name.isAcceptableValue(d.user_name.value, _user_nameMeta));
    } else if (isInserting) {
      context.missing(_user_nameMeta);
    }
    if (d.user_email.present) {
      context.handle(_user_emailMeta,
          user_email.isAcceptableValue(d.user_email.value, _user_emailMeta));
    } else if (isInserting) {
      context.missing(_user_emailMeta);
    }
    if (d.user_password.present) {
      context.handle(
          _user_passwordMeta,
          user_password.isAcceptableValue(
              d.user_password.value, _user_passwordMeta));
    } else if (isInserting) {
      context.missing(_user_passwordMeta);
    }
    if (d.user_active.present) {
      context.handle(_user_activeMeta,
          user_active.isAcceptableValue(d.user_active.value, _user_activeMeta));
    } else if (isInserting) {
      context.missing(_user_activeMeta);
    }
    if (d.token.present) {
      context.handle(
          _tokenMeta, token.isAcceptableValue(d.token.value, _tokenMeta));
    } else if (isInserting) {
      context.missing(_tokenMeta);
    }
    if (d.refresh_token.present) {
      context.handle(
          _refresh_tokenMeta,
          refresh_token.isAcceptableValue(
              d.refresh_token.value, _refresh_tokenMeta));
    } else if (isInserting) {
      context.missing(_refresh_tokenMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {user_id};
  @override
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return User.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(UsersCompanion d) {
    final map = <String, Variable>{};
    if (d.user_id.present) {
      map['user_id'] = Variable<int, IntType>(d.user_id.value);
    }
    if (d.user_name.present) {
      map['user_name'] = Variable<String, StringType>(d.user_name.value);
    }
    if (d.user_email.present) {
      map['user_email'] = Variable<String, StringType>(d.user_email.value);
    }
    if (d.user_password.present) {
      map['user_password'] =
          Variable<String, StringType>(d.user_password.value);
    }
    if (d.user_active.present) {
      map['user_active'] = Variable<int, IntType>(d.user_active.value);
    }
    if (d.token.present) {
      map['token'] = Variable<String, StringType>(d.token.value);
    }
    if (d.refresh_token.present) {
      map['refresh_token'] =
          Variable<String, StringType>(d.refresh_token.value);
    }
    return map;
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

class Training extends DataClass implements Insertable<Training> {
  final int training_id;
  final String training_name;
  final DateTime training_date;
  Training(
      {@required this.training_id,
      @required this.training_name,
      @required this.training_date});
  factory Training.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Training(
      training_id: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}training_id']),
      training_name: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}training_name']),
      training_date: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}training_date']),
    );
  }
  factory Training.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Training(
      training_id: serializer.fromJson<int>(json['training_id']),
      training_name: serializer.fromJson<String>(json['training_name']),
      training_date: serializer.fromJson<DateTime>(json['training_date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'training_id': serializer.toJson<int>(training_id),
      'training_name': serializer.toJson<String>(training_name),
      'training_date': serializer.toJson<DateTime>(training_date),
    };
  }

  @override
  TrainingsCompanion createCompanion(bool nullToAbsent) {
    return TrainingsCompanion(
      training_id: training_id == null && nullToAbsent
          ? const Value.absent()
          : Value(training_id),
      training_name: training_name == null && nullToAbsent
          ? const Value.absent()
          : Value(training_name),
      training_date: training_date == null && nullToAbsent
          ? const Value.absent()
          : Value(training_date),
    );
  }

  Training copyWith(
          {int training_id, String training_name, DateTime training_date}) =>
      Training(
        training_id: training_id ?? this.training_id,
        training_name: training_name ?? this.training_name,
        training_date: training_date ?? this.training_date,
      );
  @override
  String toString() {
    return (StringBuffer('Training(')
          ..write('training_id: $training_id, ')
          ..write('training_name: $training_name, ')
          ..write('training_date: $training_date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(training_id.hashCode,
      $mrjc(training_name.hashCode, training_date.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Training &&
          other.training_id == this.training_id &&
          other.training_name == this.training_name &&
          other.training_date == this.training_date);
}

class TrainingsCompanion extends UpdateCompanion<Training> {
  final Value<int> training_id;
  final Value<String> training_name;
  final Value<DateTime> training_date;
  const TrainingsCompanion({
    this.training_id = const Value.absent(),
    this.training_name = const Value.absent(),
    this.training_date = const Value.absent(),
  });
  TrainingsCompanion.insert({
    @required int training_id,
    @required String training_name,
    @required DateTime training_date,
  })  : training_id = Value(training_id),
        training_name = Value(training_name),
        training_date = Value(training_date);
  TrainingsCompanion copyWith(
      {Value<int> training_id,
      Value<String> training_name,
      Value<DateTime> training_date}) {
    return TrainingsCompanion(
      training_id: training_id ?? this.training_id,
      training_name: training_name ?? this.training_name,
      training_date: training_date ?? this.training_date,
    );
  }
}

class $TrainingsTable extends Trainings
    with TableInfo<$TrainingsTable, Training> {
  final GeneratedDatabase _db;
  final String _alias;
  $TrainingsTable(this._db, [this._alias]);
  final VerificationMeta _training_idMeta =
      const VerificationMeta('training_id');
  GeneratedIntColumn _training_id;
  @override
  GeneratedIntColumn get training_id => _training_id ??= _constructTrainingId();
  GeneratedIntColumn _constructTrainingId() {
    return GeneratedIntColumn(
      'training_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _training_nameMeta =
      const VerificationMeta('training_name');
  GeneratedTextColumn _training_name;
  @override
  GeneratedTextColumn get training_name =>
      _training_name ??= _constructTrainingName();
  GeneratedTextColumn _constructTrainingName() {
    return GeneratedTextColumn(
      'training_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _training_dateMeta =
      const VerificationMeta('training_date');
  GeneratedDateTimeColumn _training_date;
  @override
  GeneratedDateTimeColumn get training_date =>
      _training_date ??= _constructTrainingDate();
  GeneratedDateTimeColumn _constructTrainingDate() {
    return GeneratedDateTimeColumn(
      'training_date',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [training_id, training_name, training_date];
  @override
  $TrainingsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'trainings';
  @override
  final String actualTableName = 'trainings';
  @override
  VerificationContext validateIntegrity(TrainingsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.training_id.present) {
      context.handle(_training_idMeta,
          training_id.isAcceptableValue(d.training_id.value, _training_idMeta));
    } else if (isInserting) {
      context.missing(_training_idMeta);
    }
    if (d.training_name.present) {
      context.handle(
          _training_nameMeta,
          training_name.isAcceptableValue(
              d.training_name.value, _training_nameMeta));
    } else if (isInserting) {
      context.missing(_training_nameMeta);
    }
    if (d.training_date.present) {
      context.handle(
          _training_dateMeta,
          training_date.isAcceptableValue(
              d.training_date.value, _training_dateMeta));
    } else if (isInserting) {
      context.missing(_training_dateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {training_id};
  @override
  Training map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Training.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TrainingsCompanion d) {
    final map = <String, Variable>{};
    if (d.training_id.present) {
      map['training_id'] = Variable<int, IntType>(d.training_id.value);
    }
    if (d.training_name.present) {
      map['training_name'] =
          Variable<String, StringType>(d.training_name.value);
    }
    if (d.training_date.present) {
      map['training_date'] =
          Variable<DateTime, DateTimeType>(d.training_date.value);
    }
    return map;
  }

  @override
  $TrainingsTable createAlias(String alias) {
    return $TrainingsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  $TrainingsTable _trainings;
  $TrainingsTable get trainings => _trainings ??= $TrainingsTable(this);
  UserDao _userDao;
  UserDao get userDao => _userDao ??= UserDao(this as AppDatabase);
  TrainingDao _trainingDao;
  TrainingDao get trainingDao =>
      _trainingDao ??= TrainingDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users, trainings];
}
