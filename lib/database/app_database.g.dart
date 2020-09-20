// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class TokenLocal extends DataClass implements Insertable<TokenLocal> {
  final String token;
  final String refresh_token;
  TokenLocal({@required this.token, @required this.refresh_token});
  factory TokenLocal.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return TokenLocal(
      token:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}token']),
      refresh_token: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}refresh_token']),
    );
  }
  factory TokenLocal.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TokenLocal(
      token: serializer.fromJson<String>(json['token']),
      refresh_token: serializer.fromJson<String>(json['refresh_token']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'token': serializer.toJson<String>(token),
      'refresh_token': serializer.toJson<String>(refresh_token),
    };
  }

  @override
  TokenLocalsCompanion createCompanion(bool nullToAbsent) {
    return TokenLocalsCompanion(
      token:
          token == null && nullToAbsent ? const Value.absent() : Value(token),
      refresh_token: refresh_token == null && nullToAbsent
          ? const Value.absent()
          : Value(refresh_token),
    );
  }

  TokenLocal copyWith({String token, String refresh_token}) => TokenLocal(
        token: token ?? this.token,
        refresh_token: refresh_token ?? this.refresh_token,
      );
  @override
  String toString() {
    return (StringBuffer('TokenLocal(')
          ..write('token: $token, ')
          ..write('refresh_token: $refresh_token')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(token.hashCode, refresh_token.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is TokenLocal &&
          other.token == this.token &&
          other.refresh_token == this.refresh_token);
}

class TokenLocalsCompanion extends UpdateCompanion<TokenLocal> {
  final Value<String> token;
  final Value<String> refresh_token;
  const TokenLocalsCompanion({
    this.token = const Value.absent(),
    this.refresh_token = const Value.absent(),
  });
  TokenLocalsCompanion.insert({
    @required String token,
    @required String refresh_token,
  })  : token = Value(token),
        refresh_token = Value(refresh_token);
  TokenLocalsCompanion copyWith(
      {Value<String> token, Value<String> refresh_token}) {
    return TokenLocalsCompanion(
      token: token ?? this.token,
      refresh_token: refresh_token ?? this.refresh_token,
    );
  }
}

class $TokenLocalsTable extends TokenLocals
    with TableInfo<$TokenLocalsTable, TokenLocal> {
  final GeneratedDatabase _db;
  final String _alias;
  $TokenLocalsTable(this._db, [this._alias]);
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
  List<GeneratedColumn> get $columns => [token, refresh_token];
  @override
  $TokenLocalsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'token_locals';
  @override
  final String actualTableName = 'token_locals';
  @override
  VerificationContext validateIntegrity(TokenLocalsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
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
  Set<GeneratedColumn> get $primaryKey => {token};
  @override
  TokenLocal map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TokenLocal.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TokenLocalsCompanion d) {
    final map = <String, Variable>{};
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
  $TokenLocalsTable createAlias(String alias) {
    return $TokenLocalsTable(_db, alias);
  }
}

class UserLocal extends DataClass implements Insertable<UserLocal> {
  final int user_id;
  final String user_name;
  final String user_email;
  final String user_password;
  final int user_active;
  final String token;
  final String refresh_token;
  UserLocal(
      {@required this.user_id,
      @required this.user_name,
      @required this.user_email,
      @required this.user_password,
      @required this.user_active,
      @required this.token,
      @required this.refresh_token});
  factory UserLocal.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return UserLocal(
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
  factory UserLocal.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserLocal(
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
  UserLocalsCompanion createCompanion(bool nullToAbsent) {
    return UserLocalsCompanion(
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

  UserLocal copyWith(
          {int user_id,
          String user_name,
          String user_email,
          String user_password,
          int user_active,
          String token,
          String refresh_token}) =>
      UserLocal(
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
    return (StringBuffer('UserLocal(')
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
      (other is UserLocal &&
          other.user_id == this.user_id &&
          other.user_name == this.user_name &&
          other.user_email == this.user_email &&
          other.user_password == this.user_password &&
          other.user_active == this.user_active &&
          other.token == this.token &&
          other.refresh_token == this.refresh_token);
}

class UserLocalsCompanion extends UpdateCompanion<UserLocal> {
  final Value<int> user_id;
  final Value<String> user_name;
  final Value<String> user_email;
  final Value<String> user_password;
  final Value<int> user_active;
  final Value<String> token;
  final Value<String> refresh_token;
  const UserLocalsCompanion({
    this.user_id = const Value.absent(),
    this.user_name = const Value.absent(),
    this.user_email = const Value.absent(),
    this.user_password = const Value.absent(),
    this.user_active = const Value.absent(),
    this.token = const Value.absent(),
    this.refresh_token = const Value.absent(),
  });
  UserLocalsCompanion.insert({
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
  UserLocalsCompanion copyWith(
      {Value<int> user_id,
      Value<String> user_name,
      Value<String> user_email,
      Value<String> user_password,
      Value<int> user_active,
      Value<String> token,
      Value<String> refresh_token}) {
    return UserLocalsCompanion(
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

class $UserLocalsTable extends UserLocals
    with TableInfo<$UserLocalsTable, UserLocal> {
  final GeneratedDatabase _db;
  final String _alias;
  $UserLocalsTable(this._db, [this._alias]);
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
  $UserLocalsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_locals';
  @override
  final String actualTableName = 'user_locals';
  @override
  VerificationContext validateIntegrity(UserLocalsCompanion d,
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
  UserLocal map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserLocal.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(UserLocalsCompanion d) {
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
  $UserLocalsTable createAlias(String alias) {
    return $UserLocalsTable(_db, alias);
  }
}

class TrainingLocal extends DataClass implements Insertable<TrainingLocal> {
  final int training_id;
  final int user_id;
  final DateTime training_date;
  final String training_description;
  TrainingLocal(
      {@required this.training_id,
      @required this.user_id,
      @required this.training_date,
      @required this.training_description});
  factory TrainingLocal.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    return TrainingLocal(
      training_id: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}training_id']),
      user_id:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      training_date: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}training_date']),
      training_description: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}training_description']),
    );
  }
  factory TrainingLocal.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TrainingLocal(
      training_id: serializer.fromJson<int>(json['training_id']),
      user_id: serializer.fromJson<int>(json['user_id']),
      training_date: serializer.fromJson<DateTime>(json['training_date']),
      training_description:
          serializer.fromJson<String>(json['training_description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'training_id': serializer.toJson<int>(training_id),
      'user_id': serializer.toJson<int>(user_id),
      'training_date': serializer.toJson<DateTime>(training_date),
      'training_description': serializer.toJson<String>(training_description),
    };
  }

  @override
  TrainingLocalsCompanion createCompanion(bool nullToAbsent) {
    return TrainingLocalsCompanion(
      training_id: training_id == null && nullToAbsent
          ? const Value.absent()
          : Value(training_id),
      user_id: user_id == null && nullToAbsent
          ? const Value.absent()
          : Value(user_id),
      training_date: training_date == null && nullToAbsent
          ? const Value.absent()
          : Value(training_date),
      training_description: training_description == null && nullToAbsent
          ? const Value.absent()
          : Value(training_description),
    );
  }

  TrainingLocal copyWith(
          {int training_id,
          int user_id,
          DateTime training_date,
          String training_description}) =>
      TrainingLocal(
        training_id: training_id ?? this.training_id,
        user_id: user_id ?? this.user_id,
        training_date: training_date ?? this.training_date,
        training_description: training_description ?? this.training_description,
      );
  @override
  String toString() {
    return (StringBuffer('TrainingLocal(')
          ..write('training_id: $training_id, ')
          ..write('user_id: $user_id, ')
          ..write('training_date: $training_date, ')
          ..write('training_description: $training_description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      training_id.hashCode,
      $mrjc(user_id.hashCode,
          $mrjc(training_date.hashCode, training_description.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is TrainingLocal &&
          other.training_id == this.training_id &&
          other.user_id == this.user_id &&
          other.training_date == this.training_date &&
          other.training_description == this.training_description);
}

class TrainingLocalsCompanion extends UpdateCompanion<TrainingLocal> {
  final Value<int> training_id;
  final Value<int> user_id;
  final Value<DateTime> training_date;
  final Value<String> training_description;
  const TrainingLocalsCompanion({
    this.training_id = const Value.absent(),
    this.user_id = const Value.absent(),
    this.training_date = const Value.absent(),
    this.training_description = const Value.absent(),
  });
  TrainingLocalsCompanion.insert({
    @required int training_id,
    @required int user_id,
    @required DateTime training_date,
    @required String training_description,
  })  : training_id = Value(training_id),
        user_id = Value(user_id),
        training_date = Value(training_date),
        training_description = Value(training_description);
  TrainingLocalsCompanion copyWith(
      {Value<int> training_id,
      Value<int> user_id,
      Value<DateTime> training_date,
      Value<String> training_description}) {
    return TrainingLocalsCompanion(
      training_id: training_id ?? this.training_id,
      user_id: user_id ?? this.user_id,
      training_date: training_date ?? this.training_date,
      training_description: training_description ?? this.training_description,
    );
  }
}

class $TrainingLocalsTable extends TrainingLocals
    with TableInfo<$TrainingLocalsTable, TrainingLocal> {
  final GeneratedDatabase _db;
  final String _alias;
  $TrainingLocalsTable(this._db, [this._alias]);
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

  final VerificationMeta _training_descriptionMeta =
      const VerificationMeta('training_description');
  GeneratedTextColumn _training_description;
  @override
  GeneratedTextColumn get training_description =>
      _training_description ??= _constructTrainingDescription();
  GeneratedTextColumn _constructTrainingDescription() {
    return GeneratedTextColumn(
      'training_description',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [training_id, user_id, training_date, training_description];
  @override
  $TrainingLocalsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'training_locals';
  @override
  final String actualTableName = 'training_locals';
  @override
  VerificationContext validateIntegrity(TrainingLocalsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.training_id.present) {
      context.handle(_training_idMeta,
          training_id.isAcceptableValue(d.training_id.value, _training_idMeta));
    } else if (isInserting) {
      context.missing(_training_idMeta);
    }
    if (d.user_id.present) {
      context.handle(_user_idMeta,
          user_id.isAcceptableValue(d.user_id.value, _user_idMeta));
    } else if (isInserting) {
      context.missing(_user_idMeta);
    }
    if (d.training_date.present) {
      context.handle(
          _training_dateMeta,
          training_date.isAcceptableValue(
              d.training_date.value, _training_dateMeta));
    } else if (isInserting) {
      context.missing(_training_dateMeta);
    }
    if (d.training_description.present) {
      context.handle(
          _training_descriptionMeta,
          training_description.isAcceptableValue(
              d.training_description.value, _training_descriptionMeta));
    } else if (isInserting) {
      context.missing(_training_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {training_id};
  @override
  TrainingLocal map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TrainingLocal.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TrainingLocalsCompanion d) {
    final map = <String, Variable>{};
    if (d.training_id.present) {
      map['training_id'] = Variable<int, IntType>(d.training_id.value);
    }
    if (d.user_id.present) {
      map['user_id'] = Variable<int, IntType>(d.user_id.value);
    }
    if (d.training_date.present) {
      map['training_date'] =
          Variable<DateTime, DateTimeType>(d.training_date.value);
    }
    if (d.training_description.present) {
      map['training_description'] =
          Variable<String, StringType>(d.training_description.value);
    }
    return map;
  }

  @override
  $TrainingLocalsTable createAlias(String alias) {
    return $TrainingLocalsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TokenLocalsTable _tokenLocals;
  $TokenLocalsTable get tokenLocals => _tokenLocals ??= $TokenLocalsTable(this);
  $UserLocalsTable _userLocals;
  $UserLocalsTable get userLocals => _userLocals ??= $UserLocalsTable(this);
  $TrainingLocalsTable _trainingLocals;
  $TrainingLocalsTable get trainingLocals =>
      _trainingLocals ??= $TrainingLocalsTable(this);
  TokenLocalDao _tokenLocalDao;
  TokenLocalDao get tokenLocalDao =>
      _tokenLocalDao ??= TokenLocalDao(this as AppDatabase);
  UserLocalDao _userLocalDao;
  UserLocalDao get userLocalDao =>
      _userLocalDao ??= UserLocalDao(this as AppDatabase);
  TrainingLocalDao _trainingLocalDao;
  TrainingLocalDao get trainingLocalDao =>
      _trainingLocalDao ??= TrainingLocalDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [tokenLocals, userLocals, trainingLocals];
}
