import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/select/select_bloc.dart';
import 'custom_adaptive_tap_effect.dart';
import 'custom_input_field.dart';

class CustomPassField extends StatelessWidget {
  const CustomPassField({
    super.key,
    TextEditingController? paswordCon,
    FocusNode? paswordNode,
    this.hintText,
    this.onEditingComplete,
    this.textInputAction,
    this.validator,
  }) : _paswordCon = paswordCon,
       _paswordNode = paswordNode;

  final TextEditingController? _paswordCon;
  final FocusNode? _paswordNode;
  final String? hintText;
  final void Function()? onEditingComplete;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectBloc<bool>()..add(const Select(value: true)),
      child: BlocBuilder<SelectBloc<bool>, SelectState<bool>>(
        builder: (context, state) {
          final obscureText = state.value == true;

          return CustomInputField(
            obscureText: obscureText,
            hintText: hintText ?? 'Mật khẩu',
            controller: _paswordCon,
            focusNode: _paswordNode,
            keyboardType: TextInputType.visiblePassword,
            onEditingComplete: onEditingComplete,
            textInputAction: textInputAction,
            validator: validator,
            suffixIcon: CustomAdaptiveTapEffect(
              onPressed: () => context.read<SelectBloc<bool>>().add(
                Select(value: !obscureText),
              ),
              child: Icon(
                obscureText ? Icons.visibility : Icons.visibility_off,
                color: const Color(0x4C3C3C43),
              ),
            ),
          );
        },
      ),
    );
  }
}
