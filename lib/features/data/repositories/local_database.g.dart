// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_database.dart';

// ignore_for_file: type=lint
class $CompetitionNotiTable extends CompetitionNoti
    with TableInfo<$CompetitionNotiTable, CompetitionNotiData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompetitionNotiTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _competitionIdMeta =
      const VerificationMeta('competitionId');
  @override
  late final GeneratedColumn<int> competitionId = GeneratedColumn<int>(
      'competition_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, competitionId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'competition_noti';
  @override
  VerificationContext validateIntegrity(
      Insertable<CompetitionNotiData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('competition_id')) {
      context.handle(
          _competitionIdMeta,
          competitionId.isAcceptableOrUnknown(
              data['competition_id']!, _competitionIdMeta));
    } else if (isInserting) {
      context.missing(_competitionIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CompetitionNotiData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompetitionNotiData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      competitionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}competition_id'])!,
    );
  }

  @override
  $CompetitionNotiTable createAlias(String alias) {
    return $CompetitionNotiTable(attachedDatabase, alias);
  }
}

class CompetitionNotiData extends DataClass
    implements Insertable<CompetitionNotiData> {
  final int id;
  final int competitionId;
  const CompetitionNotiData({required this.id, required this.competitionId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['competition_id'] = Variable<int>(competitionId);
    return map;
  }

  CompetitionNotiCompanion toCompanion(bool nullToAbsent) {
    return CompetitionNotiCompanion(
      id: Value(id),
      competitionId: Value(competitionId),
    );
  }

  factory CompetitionNotiData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CompetitionNotiData(
      id: serializer.fromJson<int>(json['id']),
      competitionId: serializer.fromJson<int>(json['competitionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'competitionId': serializer.toJson<int>(competitionId),
    };
  }

  CompetitionNotiData copyWith({int? id, int? competitionId}) =>
      CompetitionNotiData(
        id: id ?? this.id,
        competitionId: competitionId ?? this.competitionId,
      );
  @override
  String toString() {
    return (StringBuffer('CompetitionNotiData(')
          ..write('id: $id, ')
          ..write('competitionId: $competitionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, competitionId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompetitionNotiData &&
          other.id == this.id &&
          other.competitionId == this.competitionId);
}

class CompetitionNotiCompanion extends UpdateCompanion<CompetitionNotiData> {
  final Value<int> id;
  final Value<int> competitionId;
  const CompetitionNotiCompanion({
    this.id = const Value.absent(),
    this.competitionId = const Value.absent(),
  });
  CompetitionNotiCompanion.insert({
    this.id = const Value.absent(),
    required int competitionId,
  }) : competitionId = Value(competitionId);
  static Insertable<CompetitionNotiData> custom({
    Expression<int>? id,
    Expression<int>? competitionId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (competitionId != null) 'competition_id': competitionId,
    });
  }

  CompetitionNotiCompanion copyWith(
      {Value<int>? id, Value<int>? competitionId}) {
    return CompetitionNotiCompanion(
      id: id ?? this.id,
      competitionId: competitionId ?? this.competitionId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (competitionId.present) {
      map['competition_id'] = Variable<int>(competitionId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompetitionNotiCompanion(')
          ..write('id: $id, ')
          ..write('competitionId: $competitionId')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  late final $CompetitionNotiTable competitionNoti =
      $CompetitionNotiTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [competitionNoti];
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localDatabaseHash() => r'7f69e54a12c99918708118a02e91ad40bb63c7c1';

/// See also [localDatabase].
@ProviderFor(localDatabase)
final localDatabaseProvider = Provider<LocalDatabase>.internal(
  localDatabase,
  name: r'localDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocalDatabaseRef = ProviderRef<LocalDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
