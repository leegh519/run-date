import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rundate/core/utils/datetime_util.dart';
import 'package:rundate/core/utils/size_util.dart';
import 'package:rundate/features/presentation/providers/competition_provider.dart';

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
                  ],
                ),
                height: 150.size,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Text(
                          '🏃🏼‍♂️${competition.title}',
                          style: TextStyle(
                            fontSize: 18.size,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.favorite_border,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(competition.place),
                      ],
                    ),
                    Row(
                      children: [
                        Text(competition.date.monthDayFormat),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '접수: ${competition.startDate.koreanFormat} ~ ${competition.endDate.koreanFormat}',
                        ),
                      ],
                    ),
                    Row(
                      children:
                          competition.eventList.map((e) => Text(e)).toList(),
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
