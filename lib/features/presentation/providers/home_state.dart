import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rundate/features/domain/entities/competition.dart';
import 'package:rundate/features/domain/entities/selected_filter.dart';
import 'package:rundate/features/presentation/providers/data_state.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<Competition> competitions,
    @Default([]) List<Competition> allCompetitions,
    @Default(SelectedFilter()) SelectedFilter selectedFilter,
    @Default(DataState.loading()) DataState status,
  }) = _HomeState;
}
