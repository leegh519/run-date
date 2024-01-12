import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rundate/features/data/repositories/competition_repository_impl.dart';
import 'package:rundate/features/domain/entities/competition.dart';

part 'get_competition.g.dart';

@riverpod
Future<List<Competition>> getCompetitions(GetCompetitionsRef ref) async {
  final repository = ref.watch(competitionRepositoryProvider);
  return await repository.getCompetitions();
}
