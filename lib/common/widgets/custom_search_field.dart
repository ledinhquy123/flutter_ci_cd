// import 'package:app_connect_3159/core/consts/app_colors.dart';
// import 'package:app_connect_3159/core/di/service_locator.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../blocs/select/select_bloc.dart';
// import 'custom_adaptive_tap_effect.dart';
// import 'custom_input_field.dart';

// class CustomSearchField extends StatelessWidget {
//   const CustomSearchField({
//     super.key,
//     this.controller,
//     required this.hintText,
//     this.onTap,
//     this.onChanged,
//   });
//   final TextEditingController? controller;
//   final String hintText;
//   final VoidCallback? onTap;
//   final void Function(String)? onChanged;

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => sl<SelectBloc<String>>(),
//       child: BlocBuilder<SelectBloc<String>, SelectState<String>>(
//         builder: (context, state) {
//           return CustomInputField(
//             onTap: onTap,
//             controller: controller,
//             onChanged: (value) {
//               context.read<SelectBloc<String>>().add(Select(value: value));
//               if (onChanged != null) onChanged!(value);
//             },
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8.r),
//             ),
//             contentPadding: EdgeInsets.symmetric(
//               horizontal: 8.w,
//               vertical: 7.h,
//             ),
//             fillColor: ElementColors.elementDefaultQuaternary,
//             hintText: hintText,
//             hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
//               color: TextColors.textDefaultSecondary,
//             ),
//             prefixIcon: Icon(
//               Icons.search,
//               size: 22.sp,
//               color: IconColors.iconDefaultSecondary,
//             ),
//             suffixIcon: state.value?.isNotEmpty == true
//                 ? CustomAdaptiveTapEffect(
//                     onPressed: () {
//                       context.read<SelectBloc<String>>().add(const Select(value: ''));
//                       controller?.clear();
//                     },
//                     child: Icon(
//                       Icons.cancel,
//                       size: 22.sp,
//                       color: TextColors.textDefaultSecondary,
//                     ),
//                   )
//                 : null,
//           );
//         },
//       ),
//     );
//   }
// }
