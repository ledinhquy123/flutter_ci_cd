// import 'package:app_connect_3159/common/enums/dialog_type.dart';
// import 'package:app_connect_3159/common/enums/server_exception_type.dart';
// import 'package:flutter/material.dart';

// import '../errors/failure.dart';
// import 'util_methods.dart';

// void displayErrorDialog(BuildContext context, {required Failure failure}) {
//   switch (failure.type) {
//     // Api
//     case ServerExceptionType.api:
//       showAppDialog(
//         context,
//         title: 'Thông báo',
//         content: failure.err,
//         type: DialogType.ok,
//       );
//       break;

//     // Token is expired
//     case ServerExceptionType.expiredToken:
//       showAppDialog(
//         context,
//         title: 'Thông báo',
//         content: 'Hết phiên đăng nhập',
//         type: DialogType.ok,
//         onConfirm: () {
//           // TODO
//         },
//       );
//       break;

//     // No internet connection
//     case ServerExceptionType.noInternetConnection:
//       showAppDialog(
//         context,
//         title: 'Thông báo',
//         content: 'Vui lòng kiểm tra lại kết nối mạng',
//         type: DialogType.ok,
//       );
//       break;

//     // System error
//     case ServerExceptionType.systemError:
//       showAppDialog(
//         context,
//         title: 'Thông báo',
//         content: 'Lỗi hệ thống',
//         type: DialogType.ok,
//       );
//       break;
//   }
// }
