import 'package:flutter/material.dart';
import 'package:rundate/core/utils/size_util.dart';
import 'package:rundate/features/presentation/widgets/competition_list.dart';
import 'package:rundate/features/presentation/widgets/end_drawer.dart';
import 'package:rundate/features/presentation/widgets/filter_bottom_sheet.dart';
import 'package:rundate/features/presentation/widgets/selected_filter.dart';

class HomeScreen extends StatelessWidget {
  static String get routeName => '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(
            left: 15.size,
          ),
          child: Text(
            '일정',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.size,
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.grey[100],
        surfaceTintColor: Colors.grey[100],
      ),
      endDrawerEnableOpenDragGesture: false,
      endDrawer: const EndDrawer(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.size),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SelectedFilter(),
                InkWell(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    elevation: 0,
                    backgroundColor: Colors.white,
                    isScrollControlled: true,
                    scrollControlDisabledMaxHeightRatio: 0.5,
                    builder: (_) => const FilterBottomSheet(),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8.size, 8.size, 0, 8.size),
                    child: const Icon(
                      Icons.tune_rounded,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const CompetitionList(),
        ],
      ),
    );
  }
}
