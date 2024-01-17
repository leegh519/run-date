import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rundate/core/utils/size_util.dart';
import 'package:rundate/features/presentation/providers/data_state.dart';
import 'package:rundate/features/presentation/providers/home_controller.dart';
import 'package:rundate/features/presentation/widgets/competition_card.dart';

class CompetitionList extends ConsumerWidget {
  const CompetitionList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeControllerProvider);
    return switch (state.status) {
      Loading() => Padding(
          padding: EdgeInsets.only(top: 30.size),
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      Data() => Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              final competition = state.competitions[index];
              return Padding(
                padding: EdgeInsets.only(
                  left: 20.size,
                  right: 20.size,
                  top: index == 0 ? 15.size : 0,
                ),
                child: CompetitionCard(competition: competition),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              height: 15.size,
            ),
            itemCount: state.competitions.length,
          ),
        ),
      Error() => Padding(
          padding: EdgeInsets.only(top: 30.size),
          child: const Text('데이터를 불러오는 도중 문제가 발생했습니다.'),
        )
    };
  }
}
