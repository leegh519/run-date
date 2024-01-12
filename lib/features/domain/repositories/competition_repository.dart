import 'package:rundate/features/domain/entities/competition.dart';

abstract class CompetitionRepository {
  Future<List<Competition>> getCompetitions();
}
