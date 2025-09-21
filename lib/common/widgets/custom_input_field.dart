import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    this.hintText,
    this.focusNode,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.onEditingComplete,
    this.readOnly = false,
    this.maxLines = 1,
    this.contentPadding,
    this.prefixIcon,
    this.fillColor,
    this.textAlign = TextAlign.start,
    this.onChanged,
    this.counter,
    this.counterText,
    this.enabled,
    this.maxLength,
    this.suffixText,
    this.style,
    this.onTap,
    this.isIgnoreValidate = false,
    this.errorText,
    this.border,
    this.hintStyle,
  });

  final String? hintText;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function()? onEditingComplete;
  final bool readOnly;
  final int? maxLines;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? prefixIcon;
  final Color? fillColor;
  final TextAlign textAlign;
  final void Function(String)? onChanged;
  final Widget? counter;
  final String? counterText;
  final bool? enabled;
  final int? maxLength;
  final String? suffixText;
  final TextStyle? style;
  final VoidCallback? onTap;
  final bool isIgnoreValidate;
  final String? errorText;
  final InputBorder? border;
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      maxLines: maxLines,
      readOnly: readOnly,
      obscureText: obscureText,
      focusNode: focusNode,
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      inputFormatters: inputFormatters,
      textAlign: textAlign,
      style: style ?? Theme.of(context).textTheme.bodyLarge,
      validator: (value) {
        if (isIgnoreValidate) {
          return null;
        }
        if (value == null || value.isEmpty) {
          return "$hintText không được trống";
        }
        if (validator != null) {
          return validator!(value);
        }
        return null;
      },
      onTap: onTap,
      maxLength: maxLength,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      decoration: InputDecoration(
        border: border,
        hintStyle: hintStyle,
        errorText: errorText,
        counter: counter,
        counterText: counterText,
        counterStyle: Theme.of(
          context,
        ).textTheme.labelSmall!.copyWith(color: const Color(0x4C3C3C43)),
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: fillColor,
        suffixText: suffixText,
      ),
    );
  }
}
