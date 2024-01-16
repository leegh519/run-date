import 'package:flutter/material.dart';
import 'package:rundate/core/utils/size_util.dart';
import 'package:rundate/core/utils/theme/app_theme_data.dart';
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
                            color: AppThemeData.mainColor,
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
                      backgroundColor: Colors.white,
                      isScrollControlled: true,
                      scrollControlDisabledMaxHeightRatio: 0.5,
                      builder: (context) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 20.size,
                            horizontal: 20.size,
                          ),
                          child: Wrap(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    '월 선택',
                                    style: TextStyle(
                                      fontSize: 18.size,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    height: 40.size,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5.size),
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 5.size,
                                            horizontal: 10.size,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.size),
                                            border: Border.all(
                                              color: AppThemeData.mainColor,
                                              width: 1.5.size,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            '${index + 1}월',
                                            style: TextStyle(
                                              fontSize: 15.size,
                                              fontWeight: FontWeight.w500,
                                              height: 1.1,
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                        width: 10.size,
                                      ),
                                      itemCount: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.size,
                                  ),
                                  Text(
                                    '접수',
                                    style: TextStyle(
                                      fontSize: 18.size,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    height: 40.size,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5.size),
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 5.size,
                                            horizontal: 10.size,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.size),
                                            border: Border.all(
                                              color: AppThemeData.mainColor,
                                              width: 1.5.size,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            '접수중',
                                            style: TextStyle(
                                              fontSize: 15.size,
                                              fontWeight: FontWeight.w500,
                                              height: 1.1,
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                        width: 10.size,
                                      ),
                                      itemCount: 2,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.size,
                                  ),
                                  Text(
                                    '종목',
                                    style: TextStyle(
                                      fontSize: 18.size,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    height: 40.size,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5.size),
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 5.size,
                                            horizontal: 10.size,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.size),
                                            border: Border.all(
                                              color: AppThemeData.mainColor,
                                              width: 1.5.size,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            '${index + 1}km',
                                            style: TextStyle(
                                              fontSize: 15.size,
                                              fontWeight: FontWeight.w500,
                                              height: 1.1,
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                        width: 10.size,
                                      ),
                                      itemCount: 4,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.size,
                                  ),
                                  Text(
                                    '알림 설정',
                                    style: TextStyle(
                                      fontSize: 18.size,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    height: 40.size,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5.size),
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 5.size,
                                            horizontal: 10.size,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.size),
                                            border: Border.all(
                                              color: AppThemeData.mainColor,
                                              width: 1.5.size,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            'ON',
                                            style: TextStyle(
                                              fontSize: 15.size,
                                              fontWeight: FontWeight.w500,
                                              height: 1.1,
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                        width: 10.size,
                                      ),
                                      itemCount: 2,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.size,
                                  ),
                                  Row(
                                    children: [
                                      Flexible(
                                        flex: 3,
                                        child: Container(
                                          height: 45.size,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15.size),
                                            color: Colors.grey,
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            '취소',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17.size,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.size,
                                      ),
                                      Flexible(
                                        flex: 7,
                                        child: Container(
                                          height: 45.size,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15.size),
                                            color: AppThemeData.mainColor,
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            '적용하기',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17.size,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
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
