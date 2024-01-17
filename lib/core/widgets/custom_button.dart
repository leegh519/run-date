import 'package:flutter/material.dart';
import 'package:rundate/core/utils/size_util.dart';
import 'package:rundate/core/utils/theme/app_theme_data.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
    this.activated = true,
    this.primary = true,
  });

  final VoidCallback? onTap;
  final String text;
  final bool activated;
  final bool primary;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: activated ? onTap : null,
      child: Container(
        height: 45.size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.size),
          color: primary ? AppThemeData.mainColor : Colors.grey,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.size,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
