// import 'dart:io';

// import 'package:flutter_image_compress/flutter_image_compress.dart';
// import 'package:path/path.dart' as path;

// Future<File?> compressAndGetFile(File? file) async {
//   try {
//     if (file == null) {
//       return null;
//     }
//     final filePath = file.absolute.path;

//     final dir = path.dirname(filePath);
//     final ext = path.extension(filePath);
//     final fileName = path.basenameWithoutExtension(filePath);

//     // If it is image
//     if (ext == '.jpg' || ext == '.jpeg' || ext == '.png' || ext == '.heic') {
//       late CompressFormat format;

//       if (ext == '.jpg' || ext == '.jpeg') {
//         format = CompressFormat.jpeg;
//       } else if (ext == '.png') {
//         format = CompressFormat.png;
//       } else if (ext == '.webp') {
//         format = CompressFormat.webp;
//       } else if (ext == '.heic') {
//         format = CompressFormat.heic;
//       } else {
//         format = CompressFormat.jpeg;
//       }
//       final targetPath = path.join(dir, "${fileName}_compressed$ext");

//       final XFile? result = await FlutterImageCompress.compressAndGetFile(
//         file.absolute.path,
//         targetPath,
//         quality: 50,
//         format: format,
//       );

//       if (result == null) {
//         return null;
//       }

//       // If file is not image
//       return File(result.path);
//     }
//     return file;
//   } catch (e) {
//     return null;
//   }
// }
