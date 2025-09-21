import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_adaptive_button.dart';

class CustomPickImageDialog extends StatelessWidget {
  const CustomPickImageDialog({
    super.key,
    required this.onPickFromLibrary,
    required this.onTakenFromCamera,
  });
  final VoidCallback onPickFromLibrary;
  final VoidCallback onTakenFromCamera;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        minimum: EdgeInsets.all(16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 12.h,
          children: [
            CustomAdaptiveButton(
              width: double.infinity,
              onPressed: onPickFromLibrary,
              text: 'Chọn ảnh từ thư viện',
            ),

            CustomAdaptiveButton(
              width: double.infinity,
              backgroundColor: Colors.white,
              borderColor: const Color(0xFFFBB355),
              textColor: const Color(0x4C3C3C43),
              onPressed: onTakenFromCamera,
              text: 'Chụp ảnh',
            ),
          ],
        ),
      ),
    );
  }
}
