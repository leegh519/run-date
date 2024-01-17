import 'package:drift/drift.dart';

class CompetitionNoti extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get competitionId => integer()();
}
