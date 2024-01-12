import 'dart:math';

import 'package:flutter/material.dart';

class SizeUtil {
  static double topPadding = 0.0;
  static double bottomPadding = 0.0;
  static double deviceWidth = 0.0;
  static double deviceHeight = 0.0;

  static void getMediaSize(BuildContext context) async {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    topPadding = MediaQuery.of(context).padding.top;
    bottomPadding = MediaQuery.of(context).padding.bottom;
  }
}

extension SizeUtilDouble on double {
  double _expectWidth(double width) => SizeUtil.deviceWidth / 360 * width;
  double _expectHeight(double height) => SizeUtil.deviceHeight / 640 * height;
  double get size {
    return min(_expectWidth(this), _expectHeight(this));
  }
}

extension SizeUtilInt on int {
  double _expectWidth(double width) => SizeUtil.deviceWidth / 360 * width;
  double _expectHeight(double height) => SizeUtil.deviceHeight / 640 * height;
  double get size {
    return min(_expectWidth(toDouble()), _expectHeight(toDouble()));
  }
}
