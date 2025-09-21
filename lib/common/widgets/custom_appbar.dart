import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    this.automaticallyImplyLeading = true,
    this.actions,
    this.backgroundColor,
    this.visibleBottom = true,
    this.leading,
  });
  final Widget title;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final bool visibleBottom;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: automaticallyImplyLeading,
      surfaceTintColor: backgroundColor,
      title: title,
      actions: actions,
      leading: leading,
      bottom: _getAppbarBottom(),
    );
  }

  PreferredSize? _getAppbarBottom() {
    return visibleBottom
        ? PreferredSize(
            preferredSize: preferredSize,
            child: Divider(height: 0.3.h, color: Colors.grey),
          )
        : null;
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
