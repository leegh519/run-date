import 'package:flutter/material.dart';
import 'package:rundate/core/utils/size_util.dart';
import 'package:rundate/features/presentation/widgets/competition_list.dart';

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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.size),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 40.size,
                    padding: EdgeInsets.symmetric(vertical: 8.size),
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 2.size,
                            horizontal: 5.size,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.size),
                            color: Colors.green[600],
                          ),
                          child: Row(
                            children: [
                              Text(
                                '${index + 1}월 ',
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
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10.size,
                      ),
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container();
                      },
                    );
                  },
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
