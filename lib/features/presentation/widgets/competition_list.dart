import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rundate/core/utils/datetime_util.dart';
import 'package:rundate/core/utils/size_util.dart';
import 'package:rundate/features/presentation/providers/competition_provider.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

class CompetitionList extends ConsumerWidget {
  const CompetitionList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeControllerProvider);
    return state.when(
      data: (data) => Expanded(
        child: ListView.separated(
          itemBuilder: (context, index) {
            final competition = data[index];
            return Padding(
              padding: EdgeInsets.only(
                left: 20.size,
                right: 20.size,
                top: index == 0 ? 15.size : 0,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15.size,
                  horizontal: 15.size,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.size),
                  color: Colors.white,
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
                        DateTime.now().isBefore(
                            competition.endDate.add(const Duration(days: 1))))
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
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.favorite_border,
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
                            child: Text(
                                '${competition.region}-${competition.place}'),
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
                                  color: Colors.green[600],
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
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            height: 15.size,
          ),
          itemCount: data.length,
        ),
      ),
      error: (error, stackTrace) {
        log(stackTrace.toString());
        return Text('Error: $error');
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
