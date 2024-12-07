import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rundate/features/domain/entities/competition.dart';
import 'package:rundate/features/domain/entities/enums/filter.dart';
import 'package:rundate/features/domain/entities/selected_filter.dart';
import 'package:rundate/features/domain/usecases/competition_notification.dart';
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
        year: ['${DateTime.now().year}년'],
        month: ['${DateTime.now().month}월'],
      ),
    );
    _getNotificationList();
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
    final year = state.selectedFilter.year;
    final month = state.selectedFilter.month;
    final event = state.selectedFilter.event;
    final region = state.selectedFilter.region;
    // final notificationOnOff = state.selectedFilter.notificationOnOff;
    final reception = state.selectedFilter.reception;
    final competitions = [...state.allCompetitions];

    // 년도 필터링
    if (year.isNotEmpty) {
      competitions.removeWhere((competition) => !year.contains('${competition.date.year}년'));
    }
    // 월 필터링
    if (month.isNotEmpty) {
      competitions.removeWhere((competition) => !month.contains('${competition.date.month}월'));
    }
    // 지역 필터링
    if (region.isNotEmpty) {
      competitions.removeWhere((competition) => !region.contains(competition.region));
    }
    // 종목 필터링
    if (event.isNotEmpty) {
      competitions.removeWhere((competition) {
        return competition.eventList.where((element) => event.contains(element)).isEmpty;
      });
    }
    // 접수중 필터링
    if (reception.isNotEmpty) {
      competitions.removeWhere((competition) {
        final progress = DateTime.now().isAfter(competition.startDate) &&
                DateTime.now().isBefore(competition.endDate.add(const Duration(days: 1)))
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
    final year = List<String>.from(state.selectedFilter.year)..remove(filter);
    final event = List<String>.from(state.selectedFilter.event)..remove(filter);
    final month = List<String>.from(state.selectedFilter.month)..remove(filter);
    final region = List<String>.from(state.selectedFilter.region)..remove(filter);
    // final notificationOnOff =
    //     List<String>.from(state.selectedFilter.notificationOnOff)
    //       ..remove(filter);
    final reception = List<String>.from(state.selectedFilter.reception)..remove(filter);

    state = state.copyWith(
      selectedFilter: SelectedFilter(
        event: event,
        month: month,
        region: region,
        year: year,
        // notificationOnOff: notificationOnOff,
        reception: reception,
      ),
    );
    _filterData();
  }

  void addNotification(Competition competition) async {
    await ref.read(competitionNotiticationsProvider).add(competition);
    _getNotificationList();
  }

  void deleteNotification(int id) async {
    await ref.read(competitionNotiticationsProvider).delete(id);
    _getNotificationList();
  }

  void _getNotificationList() async {
    final list = await ref.read(competitionNotiticationsProvider).getAll();
    state = state.copyWith(
      notificationList: list,
    );
  }
}
