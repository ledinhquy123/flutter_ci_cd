import 'package:flutter/material.dart';

class CustomAdaptiveSwitch extends StatelessWidget {
  const CustomAdaptiveSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final bool value;
  final void Function(bool val) onChanged;

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: value,
      trackOutlineWidth: const WidgetStatePropertyAll(0),
      inactiveTrackColor: const Color(0xffE2382F),
      trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
      activeColor: Colors.white,
      activeTrackColor: Colors.green,
      thumbColor: const WidgetStatePropertyAll(Colors.white),
      padding: EdgeInsets.zero,
      onChanged: onChanged,
    );
  }
}
