import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rundate/core/utils/size_util.dart';
import 'package:rundate/core/utils/theme/app_theme_data.dart';
import 'package:rundate/features/presentation/providers/home_controller.dart';

class SelectedFilter extends ConsumerWidget {
  const SelectedFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeControllerProvider);
    final filters = state.selectedFilter.allFilters;

    return Expanded(
      child: Container(
        height: 40.size,
        padding: EdgeInsets.symmetric(vertical: 8.size),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                ref
                    .read(homeControllerProvider.notifier)
                    .deleteFilter(filters[index]);
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 2.size,
                  horizontal: 5.size,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.size),
                  color: AppThemeData.mainColor,
                ),
                child: Row(
                  children: [
                    Text(
                      '${filters[index]} ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 13.size,
                      ),
                    ),
                    Icon(
                      Icons.close,
                      size: 14.size,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            width: 10.size,
          ),
          itemCount: filters.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
