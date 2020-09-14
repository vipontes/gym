// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class UsuarioLocal extends DataClass implements Insertable<UsuarioLocal> {
  final int usuario_id;
  final String usuario_nome;
  UsuarioLocal({@required this.usuario_id, @required this.usuario_nome});
  factory UsuarioLocal.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return UsuarioLocal(
      usuario_id:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}usuario_id']),
      usuario_nome: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}usuario_nome']),
    );
  }
  factory UsuarioLocal.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UsuarioLocal(
      usuario_id: serializer.fromJson<int>(json['usuario_id']),
      usuario_nome: serializer.fromJson<String>(json['usuario_nome']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'usuario_id': serializer.toJson<int>(usuario_id),
      'usuario_nome': serializer.toJson<String>(usuario_nome),
    };
  }

  @override
  UsuarioLocalsCompanion createCompanion(bool nullToAbsent) {
    return UsuarioLocalsCompanion(
      usuario_id: usuario_id == null && nullToAbsent
          ? const Value.absent()
          : Value(usuario_id),
      usuario_nome: usuario_nome == null && nullToAbsent
          ? const Value.absent()
          : Value(usuario_nome),
    );
  }

  UsuarioLocal copyWith({int usuario_id, String usuario_nome}) => UsuarioLocal(
        usuario_id: usuario_id ?? this.usuario_id,
        usuario_nome: usuario_nome ?? this.usuario_nome,
      );
  @override
  String toString() {
    return (StringBuffer('UsuarioLocal(')
          ..write('usuario_id: $usuario_id, ')
          ..write('usuario_nome: $usuario_nome')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(usuario_id.hashCode, usuario_nome.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is UsuarioLocal &&
          other.usuario_id == this.usuario_id &&
          other.usuario_nome == this.usuario_nome);
}

class UsuarioLocalsCompanion extends UpdateCompanion<UsuarioLocal> {
  final Value<int> usuario_id;
  final Value<String> usuario_nome;
  const UsuarioLocalsCompanion({
    this.usuario_id = const Value.absent(),
    this.usuario_nome = const Value.absent(),
  });
  UsuarioLocalsCompanion.insert({
    @required int usuario_id,
    @required String usuario_nome,
  })  : usuario_id = Value(usuario_id),
        usuario_nome = Value(usuario_nome);
  UsuarioLocalsCompanion copyWith(
      {Value<int> usuario_id, Value<String> usuario_nome}) {
    return UsuarioLocalsCompanion(
      usuario_id: usuario_id ?? this.usuario_id,
      usuario_nome: usuario_nome ?? this.usuario_nome,
    );
  }
}

class $UsuarioLocalsTable extends UsuarioLocals
    with TableInfo<$UsuarioLocalsTable, UsuarioLocal> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsuarioLocalsTable(this._db, [this._alias]);
  final VerificationMeta _usuario_idMeta = const VerificationMeta('usuario_id');
  GeneratedIntColumn _usuario_id;
  @override
  GeneratedIntColumn get usuario_id => _usuario_id ??= _constructUsuarioId();
  GeneratedIntColumn _constructUsuarioId() {
    return GeneratedIntColumn(
      'usuario_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usuario_nomeMeta =
      const VerificationMeta('usuario_nome');
  GeneratedTextColumn _usuario_nome;
  @override
  GeneratedTextColumn get usuario_nome =>
      _usuario_nome ??= _constructUsuarioNome();
  GeneratedTextColumn _constructUsuarioNome() {
    return GeneratedTextColumn(
      'usuario_nome',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [usuario_id, usuario_nome];
  @override
  $UsuarioLocalsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'usuario_locals';
  @override
  final String actualTableName = 'usuario_locals';
  @override
  VerificationContext validateIntegrity(UsuarioLocalsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.usuario_id.present) {
      context.handle(_usuario_idMeta,
          usuario_id.isAcceptableValue(d.usuario_id.value, _usuario_idMeta));
    } else if (isInserting) {
      context.missing(_usuario_idMeta);
    }
    if (d.usuario_nome.present) {
      context.handle(
          _usuario_nomeMeta,
          usuario_nome.isAcceptableValue(
              d.usuario_nome.value, _usuario_nomeMeta));
    } else if (isInserting) {
      context.missing(_usuario_nomeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {usuario_id};
  @override
  UsuarioLocal map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UsuarioLocal.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(UsuarioLocalsCompanion d) {
    final map = <String, Variable>{};
    if (d.usuario_id.present) {
      map['usuario_id'] = Variable<int, IntType>(d.usuario_id.value);
    }
    if (d.usuario_nome.present) {
      map['usuario_nome'] = Variable<String, StringType>(d.usuario_nome.value);
    }
    return map;
  }

  @override
  $UsuarioLocalsTable createAlias(String alias) {
    return $UsuarioLocalsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UsuarioLocalsTable _usuarioLocals;
  $UsuarioLocalsTable get usuarioLocals =>
      _usuarioLocals ??= $UsuarioLocalsTable(this);
  UsuarioLocalDao _usuarioLocalDao;
  UsuarioLocalDao get usuarioLocalDao =>
      _usuarioLocalDao ??= UsuarioLocalDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [usuarioLocals];
}
