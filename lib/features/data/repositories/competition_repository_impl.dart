import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rundate/features/domain/entities/competition.dart';
import 'package:rundate/features/domain/repositories/competition_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'competition_repository_impl.g.dart';

@riverpod
CompetitionRepository competitionRepository(CompetitionRepositoryRef ref) {
  return CompetitionRepositoryImpl();
}

class CompetitionRepositoryImpl implements CompetitionRepository {
  @override
  Future<List<Competition>> getCompetitions() async {
    final list = await Supabase.instance.client
        .from('competitions')
        .select()
        .order('date', ascending: true);
    print(list);
    return list.map((e) => Competition.fromJson(e)).toList();
  }
}
