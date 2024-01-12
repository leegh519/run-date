import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rundate/features/domain/entities/competition.dart';
import 'package:rundate/features/domain/usecases/get_competition.dart';

part 'competition_provider.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  FutureOr<List<Competition>> build() async {
    return _getData();
  }

  Future<List<Competition>> _getData() async {
    return ref.watch(getCompetitionsProvider.future);
  }
}
