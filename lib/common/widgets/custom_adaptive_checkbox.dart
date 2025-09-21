import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAdaptiveCheckbox extends StatelessWidget {
  const CustomAdaptiveCheckbox({
    super.key,
    required this.value,
    this.onChanged,
  });
  final bool value;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox.adaptive(
      value: value,
      onChanged: onChanged,
      visualDensity: VisualDensity.compact,
      activeColor: const Color(0x4C3C3C43),
      fillColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const Color(0x4C3C3C43);
        }
        return Colors.transparent;
      }),
      side: BorderSide(color: const Color(0x4C3C3C43), width: 2.w),
    );
  }
}
