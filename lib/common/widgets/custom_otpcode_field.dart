import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class CustomOtpcodeField extends StatelessWidget {
  const CustomOtpcodeField({
    super.key,
    this.onCompleted,
    this.controller,
    this.focusNode,
  });
  final void Function(String)? onCompleted;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Pinput.builder(
      length: 5,
      separatorBuilder: (_) => SizedBox(width: 16.w),
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      hapticFeedbackType: HapticFeedbackType.vibrate,
      keyboardType: TextInputType.number,
      onCompleted: onCompleted,
      keyboardAppearance: Brightness.light,
      controller: controller,
      focusNode: focusNode,
      builder: (context, pinItemBuilderState) => Container(
        width: 55.w,
        height: 70.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.white,
          border: Border.all(width: 1.w, color: Colors.grey),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 2.h,
          children: [
            // Number
            Text(
              pinItemBuilderState.value,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            // Divider
            AnimatedOpacity(
              opacity: pinItemBuilderState.value.isEmpty ? 1 : 0,
              duration: const Duration(milliseconds: 400),
              child: Divider(height: 1.h, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
