import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rundate/core/utils/size_util.dart';
import 'package:rundate/features/presentation/widgets/competition_list.dart';
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
      endDrawer: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.horizontal(left: Radius.circular(15.size)),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: 50.size,
              left: 10.size,
              right: 10.size,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.size,
                    bottom: 30.size,
                  ),
                  child: SvgPicture.asset('assets/image/svgviewer-output.svg'),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.size),
                    child: Text(
                      '일정추가',
                      style: TextStyle(
                        fontSize: 16.size,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.size),
                    child: Text(
                      '후원하기',
                      style: TextStyle(
                        fontSize: 16.size,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
