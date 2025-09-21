import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAdaptiveTapEffect extends StatelessWidget {
  const CustomAdaptiveTapEffect({
    super.key,
    required this.child,
    required this.onPressed,
    this.alignment = Alignment.center,
    this.onLongPress,
  });
  final Widget child;
  final VoidCallback onPressed;
  final AlignmentGeometry alignment;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    final isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    // If current platform is iOS
    if (isIOS) {
      return CupertinoButton(
        onLongPress: onLongPress,
        color: Colors.transparent,
        alignment: alignment,
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: child,
      );
    }

    // If current platform is android
    return ElevatedButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        alignment: alignment,
        elevation: 0,
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
      ),
      child: child,
    );
  }
}
