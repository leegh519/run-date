import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rundate/features/data/models/competition_noti.dart';

part 'local_database.g.dart';

@Riverpod(keepAlive: true)
LocalDatabase localDatabase(LocalDatabaseRef ref) {
  return LocalDatabase();
}

@DriftDatabase(tables: [CompetitionNoti])
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<int> createCompetitionNoti(CompetitionNotiCompanion data) =>
      into(competitionNoti).insertOnConflictUpdate(data);

  Future<List<CompetitionNotiData>> getCompetitionNoti(int competitionId) =>
      (select(competitionNoti)
            ..where((tbl) => tbl.competitionId.equals(competitionId)))
          .get();

  Future<List<CompetitionNotiData>> getAll() => (select(competitionNoti)).get();

  Future<int> deleteCompetitionNoti(int id) =>
      (delete(competitionNoti)..where((t) => t.competitionId.equals(id))).go();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    // path_provider 를 통해 앱의 저장위치 얻음
    final dbFolder = await getApplicationDocumentsDirectory();

    // 해당 경로에 파일 생성
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
