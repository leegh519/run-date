import 'package:flutter/material.dart';
import 'package:rundate/core/utils/size_util.dart';
import 'package:rundate/core/utils/theme/app_theme_data.dart';
import 'package:rundate/features/domain/entities/selected_filter.dart';

class FilterList extends StatelessWidget {
  const FilterList({
    super.key,
    required this.filters,
    required this.selectedFilters,
    this.onTap,
  });

  final List<String> filters;
  final SelectedFilter selectedFilters;
  final Function(String filter)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.size,
      padding: EdgeInsets.symmetric(vertical: 5.size),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              if (onTap != null) {
                onTap!(filters[index]);
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 5.size,
                horizontal: 10.size,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.size),
                border: Border.all(
                  color: AppThemeData.mainColor,
                  width: 1.5.size,
                ),
                color: selectedFilters.allFilters.contains(filters[index])
                    ? AppThemeData.mainColor
                    : Colors.white,
              ),
              alignment: Alignment.center,
              child: Text(
                filters[index],
                style: TextStyle(
                  fontSize: 15.size,
                  fontWeight: FontWeight.w500,
                  height: 1.1,
                  color: selectedFilters.allFilters.contains(filters[index])
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 10.size,
        ),
        itemCount: filters.length,
      ),
    );
  }
}
