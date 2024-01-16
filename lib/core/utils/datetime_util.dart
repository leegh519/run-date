import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  /// MM-dd
  String get monthDayFormat => DateFormat('M월 d일').format(this);

  /// yyyy년MM월dd일
  String get koreanFormat => DateFormat('yy년 M월 d일').format(this);
}
