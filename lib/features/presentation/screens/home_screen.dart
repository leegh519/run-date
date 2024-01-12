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
      body: const Column(
        children: [
          CompetitionList(),
        ],
      ),
    );
  }
}
