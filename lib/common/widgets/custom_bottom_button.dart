import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomButton extends StatelessWidget {
  const CustomBottomButton({
    super.key,
    required this.child,
    this.borderColor,
    this.backgroundColor,
  });
  final Widget child;
  final Color? borderColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        border: Border(
          top: BorderSide(
            width: 1.h,
            color: borderColor ?? Colors.grey,
          ),
        ),
      ),
      child: SafeArea(
        minimum: EdgeInsets.all(16.w),
        child: SizedBox(
          width: double.infinity,
          height: kBottomNavigationBarHeight,
          child: child,
        ),
      ),
    );
  }
}
