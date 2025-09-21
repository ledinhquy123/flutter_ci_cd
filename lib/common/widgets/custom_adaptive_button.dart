import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAdaptiveButton extends StatelessWidget {
  const CustomAdaptiveButton({
    super.key,
    this.width,
    this.height,
    required this.onPressed,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.padding,
    this.radius,
    this.borderColor = Colors.transparent,
    this.borderWidth,
    this.preffixWidget,
    this.alignment,
    this.horizontalSpacing,
  });
  final double? width;
  final double? height;
  final VoidCallback onPressed;
  final String? text;
  final Color? backgroundColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final double? radius;
  final Color borderColor;
  final double? borderWidth;
  final Widget? preffixWidget;
  final AlignmentGeometry? alignment;
  final double? horizontalSpacing;

  @override
  Widget build(BuildContext context) {
    final isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    // If current platform is iOS
    if (isIOS) {
      return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 12.r),
          border: Border.all(width: borderWidth ?? 1.w, color: borderColor),
        ),
        child: CupertinoButton(
          color: backgroundColor ?? const Color(0xFFFBB355),
          alignment: alignment ?? Alignment.center,
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
          borderRadius: BorderRadius.circular(radius ?? 12.r),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: (horizontalSpacing ?? 4.w),
            children: [
              if (preffixWidget != null) preffixWidget!,
              if (text != null)
                Text(
                  text ?? '',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: textColor ?? const Color(0x4C3C3C43),
                  ),
                ),
            ],
          ),
        ),
      );
    }

    // If current platform is android
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          alignment: alignment,
          backgroundColor: backgroundColor,
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 12.r),
            side: BorderSide(width: borderWidth ?? 1.w, color: borderColor),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: (horizontalSpacing ?? 4.w),
          children: [
            if (preffixWidget != null) preffixWidget!,
            if (text != null)
              Text(
                text ?? '',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: textColor ?? const Color(0x4C3C3C43),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
