import 'package:drift/drift.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rundate/core/configs/firebase/fcm_setting.dart';
import 'package:rundate/features/data/repositories/local_database.dart';
import 'package:rundate/features/domain/entities/competition.dart';
import 'package:timezone/timezone.dart' as tz;

part 'competition_notification.g.dart';

@riverpod
CompetitionNotitications competitionNotitications(
    CompetitionNotiticationsRef ref) {
  final localDatabase = ref.watch(localDatabaseProvider);
  return CompetitionNotitications(localDatabase: localDatabase);
}

class CompetitionNotitications {
  final LocalDatabase localDatabase;

  const CompetitionNotitications({required this.localDatabase});

  Future<void> add(Competition competition) async {
    final now = DateTime.now();

    int reception = await localDatabase.createCompetitionNoti(
      CompetitionNotiCompanion(competitionId: Value(competition.id)),
    );
    if (competition.startDate.isAfter(now)) {
      FcmSetting.instance.flutterLocalNotificationsPlugin.zonedSchedule(
        reception,
        '대회 접수 알림',
        '${competition.title} 접수일입니다.',
        tz.TZDateTime.local(
          competition.startDate.year,
          competition.startDate.month,
          competition.startDate.day,
          8,
        ),
        // tz.TZDateTime.local(
        //   2024,
        //   12,
        //   9,
        //   11,
        //   50,
        // ),
        // tz.TZDateTime.now(tz.local).add(Duration(minutes: 2)),
        FcmSetting.instance.platformChannelSpecifics,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      );
    }

    int competitionId = await localDatabase.createCompetitionNoti(
      CompetitionNotiCompanion(competitionId: Value(competition.id)),
    );
    if (competition.date.isAfter(now)) {
      FcmSetting.instance.flutterLocalNotificationsPlugin.zonedSchedule(
        competitionId,
        '대회 알림',
        '${competition.title} D-1',
        tz.TZDateTime.local(
          competition.date.year,
          competition.date.month,
          competition.date.day - 1,
          8,
        ),
        // tz.TZDateTime.local(
        //   2024,
        //   1,
        //   18,
        //   11,
        //   30,
        // ),
        // tz.TZDateTime.now(tz.local).add(Duration(minutes: 3)),
        FcmSetting.instance.platformChannelSpecifics,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      );
    }
    int competitionDay = await localDatabase.createCompetitionNoti(
      CompetitionNotiCompanion(competitionId: Value(competition.id)),
    );
    if (competition.date.isAfter(now)) {
      FcmSetting.instance.flutterLocalNotificationsPlugin.zonedSchedule(
        competitionDay,
        '대회 알림',
        '러너님의 대회를 응원합니다! ${competition.title} D-Day',
        tz.TZDateTime.local(
          competition.date.year,
          competition.date.month,
          competition.date.day,
          7,
        ),
        // tz.TZDateTime.local(
        //   2024,
        //   12,
        //   10,
        //   22,
        //   30,
        // ),
        // tz.TZDateTime.now(tz.local).add(Duration(minutes: 1)),
        FcmSetting.instance.platformChannelSpecifics,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      );
    }
    return;
  }

  Future<int> delete(int id) async {
    final list = await localDatabase.getCompetitionNoti(id);
    for (var competition in list) {
      FcmSetting.instance.flutterLocalNotificationsPlugin
          .cancel(competition.id);
    }
    return await localDatabase.deleteCompetitionNoti(id);
  }

  Future<List<int>> getAll() async {
    final list = await localDatabase.getAll();
    return list.map((e) => e.competitionId).toList();
  }
}
