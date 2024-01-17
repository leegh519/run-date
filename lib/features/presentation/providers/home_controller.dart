import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rundate/features/domain/entities/enums/filter.dart';
import 'package:rundate/features/domain/entities/selected_filter.dart';
import 'package:rundate/features/domain/usecases/get_competition.dart';
import 'package:rundate/features/presentation/providers/data_state.dart';
import 'package:rundate/features/presentation/providers/home_state.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  HomeState build() {
    state = HomeState(
      selectedFilter: SelectedFilter(
        month: ['${DateTime.now().month}월'],
      ),
    );
    _getData();
    return state;
  }

  Future<void> _getData() async {
    try {
      final competitions = await ref.watch(getCompetitionsProvider.future);
      state = state.copyWith(
        competitions: competitions,
        allCompetitions: competitions,
        status: const DataState.data(),
      );
    } on Exception catch (e, stack) {
      log(stack.toString());
      state = state.copyWith(
        status: DataState.error(error: e, stackTrace: stack),
      );
    }
    _filterData();
    return;
  }

  Future<void> _filterData() async {
    final month = state.selectedFilter.month;
    final event = state.selectedFilter.event;
    // final notificationOnOff = state.selectedFilter.notificationOnOff;
    final reception = state.selectedFilter.reception;
    final competitions = [...state.allCompetitions];

    // 월 필터링
    if (month.isNotEmpty) {
      competitions.removeWhere(
          (competition) => !month.contains('${competition.date.month}월'));
    }
    // 종목 필터링
    if (event.isNotEmpty) {
      competitions.removeWhere((competition) {
        return competition.eventList
            .where((element) => event.contains(element))
            .isEmpty;
      });
    }
    // 접수중 필터링
    if (reception.isNotEmpty) {
      competitions.removeWhere((competition) {
        final progress = DateTime.now().isAfter(competition.startDate) &&
                DateTime.now()
                    .isBefore(competition.endDate.add(const Duration(days: 1)))
            ? Reception.progress.name
            : Reception.end.name;

        return !reception.contains(progress);
      });
    }
    state = state.copyWith(
      competitions: competitions,
    );
  }

  void setFilter(SelectedFilter selectedFilter) {
    state = state.copyWith(
      selectedFilter: selectedFilter,
    );
    _filterData();
  }

  void deleteFilter(String filter) {
    final event = List<String>.from(state.selectedFilter.event)..remove(filter);
    final month = List<String>.from(state.selectedFilter.month)..remove(filter);
    // final notificationOnOff =
    //     List<String>.from(state.selectedFilter.notificationOnOff)
    //       ..remove(filter);
    final reception = List<String>.from(state.selectedFilter.reception)
      ..remove(filter);

    state = state.copyWith(
      selectedFilter: SelectedFilter(
        event: event,
        month: month,
        // notificationOnOff: notificationOnOff,
        reception: reception,
      ),
    );
    _filterData();
  }
}
