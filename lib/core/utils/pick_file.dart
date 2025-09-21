// import 'dart:io';

// import 'package:datgi_nv/common/enums/snackbar_type.dart';
// import 'package:datgi_nv/core/core_util_module.dart';
// import 'package:datgi_nv/core/lang/app_localizations.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';

// Future<File?> pickFile(BuildContext context) async {
//   try {
//     final List<String> extensions = [
//       'doc',
//       'docx',
//       'pdf',
//       'jpg',
//       'jpeg',
//       'png',
//       'gif',
//       'bmp',
//       'webp',
//     ];

//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: extensions,
//     );
//     if (result != null) {
//       File file = File(result.files.single.path!);
//       return file;
//     } else {
//       return null;
//     }
//   } catch (e) {
//     if (context.mounted) {
//       showAppSnackbar(
//         context,
//         content: AppLocalizations.of(context)!.selectFileFailure,
//         snackbarType: SnackbarType.error,
//       );
//     }
//     return null;
//   }
// }
