import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rundate/core/utils/datetime_util.dart';
import 'package:rundate/core/utils/size_util.dart';
import 'package:rundate/core/utils/theme/app_theme_data.dart';
import 'package:rundate/features/domain/entities/competition.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'package:rundate/features/presentation/providers/home_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class CompetitionCard extends ConsumerWidget {
  const CompetitionCard({
    super.key,
    required this.competition,
  });

  final Competition competition;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(
        homeControllerProvider.select((value) => value.notificationList));
    final now = DateTime.now().copyWith(
      hour: 0,
      minute: 0,
      second: 0,
      microsecond: 0,
      millisecond: 0,
    );
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15.size,
        horizontal: 15.size,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.size),
        color: now.isAfter(competition.date) ? Colors.grey[200] : Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(1, 2),
            color: Colors.black.withOpacity(0.03),
            blurRadius: 1.size,
          ),
          BoxShadow(
            offset: const Offset(-1, 0),
            color: Colors.black.withOpacity(0.03),
            blurRadius: 1.size,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (DateTime.now().isAfter(competition.startDate) &&
              DateTime.now()
                  .isBefore(competition.endDate.add(const Duration(days: 1))))
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 1.size,
                    horizontal: 4.size,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red[300],
                    borderRadius: BorderRadius.circular(10.size),
                  ),
                  child: Text(
                    '접수중',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.size,
                    ),
                  ),
                ),
              ],
            ),
          SizedBox(
            height: 3.size,
          ),
          InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              launchUrl(Uri.parse(competition.url!),
                  mode: LaunchMode.externalApplication);
            },
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        '🏃🏼‍♂️${competition.title}',
                        style: TextStyle(
                          fontSize: 18.size,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                          color: now.isAfter(competition.date)
                              ? Colors.grey[700]
                              : Colors.black,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (!list.contains(competition.id)) {
                          ref
                              .read(homeControllerProvider.notifier)
                              .addNotification(competition);
                          Fluttertoast.showToast(
                            msg: '대회 알림이 설정되었습니다',
                            fontSize: 14.size,
                          );
                        } else {
                          ref
                              .read(homeControllerProvider.notifier)
                              .deleteNotification(competition.id);
                        }
                      },
                      child: Icon(
                        !list.contains(competition.id)
                            ? Icons.notification_add_outlined
                            : Icons.notifications_active_outlined,
                        color: !list.contains(competition.id)
                            ? Colors.grey[700]
                            : AppThemeData.mainColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.size,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      size: 20.size,
                      color: Colors.grey[600],
                    ),
                    SizedBox(
                      width: 5.size,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          competition.date.monthDayFormat,
                          style: TextStyle(
                            fontSize: 16.size,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.size,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_sharp,
                      size: 20.size,
                      color: Colors.grey[600],
                    ),
                    SizedBox(
                      width: 5.size,
                    ),
                    Flexible(
                      child: FittedBox(
                        child:
                            Text('${competition.region}-${competition.place}'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.size,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.description_outlined,
                      size: 20.size,
                      color: Colors.grey[600],
                    ),
                    SizedBox(
                      width: 5.size,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          '접수: ${competition.startDate.koreanFormat} ~ ${competition.endDate.koreanFormat}',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.size,
          ),
          Wrap(
            children: competition.eventList
                .mapIndexed(
                  (i, e) => Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: i != 0 ? 2.size : 0,
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 1.size,
                        horizontal: 4.size,
                      ),
                      decoration: BoxDecoration(
                        color: AppThemeData.mainColor,
                        borderRadius: BorderRadius.circular(10.size),
                      ),
                      child: Text(
                        e,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.size,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
