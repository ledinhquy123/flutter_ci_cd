import 'package:app_mariana_3211/common/blocs/dialog_observer/dialog_observer_bloc.dart';
import 'package:app_mariana_3211/common/enums/dialog_type.dart';
import 'package:app_mariana_3211/common/widgets/custom_ok_cancel_dialog.dart';
import 'package:app_mariana_3211/common/widgets/custom_ok_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../di/service_locator.dart';

// Close the app
void onCloseTheApp(BuildContext context) {
  showAppDialog(
    context,
    title: 'Thoát',
    content: 'Bạn chắc chắn muốn thoát ứng dụng?',
    confirmText: 'Thoát',
    onConfirm: () => SystemNavigator.pop(),
  );
}

// Get display text
String getDisplayText(BuildContext context, String? text, {String? fallback}) {
  if (text == null || text.trim().isEmpty) {
    return fallback ?? 'Chưa có';
  }
  return text;
}

// Make phone call
// Future<void> makePhoneCall(
//   BuildContext context, {
//   required String phoneNumber,
// }) async {
//   try {
//     final Uri phoneUrl = Uri(scheme: 'tel', path: phoneNumber);
//     if (await canLaunchUrl(phoneUrl)) {
//       await launchUrl(phoneUrl);
//     } else {
//       if (context.mounted) {
//         showAppToast(
//           context,
//           des: 'Tạo cuộc gọi thất bại',
//           type: ToastificationType.error,
//         );
//       }
//     }
//   } catch (e) {
//     if (context.mounted) {
//       showAppToast(
//         context,
//         des: 'Tạo cuộc gọi thất bại',
//         type: ToastificationType.error,
//       );
//     }
//   }
// }

// Copy
// Future<void> onCopy(BuildContext context, {required String content}) async {
//   await Clipboard.setData(ClipboardData(text: content));
//   if (context.mounted) {
//     if (context.mounted) {
//       showAppToast(context, des: 'Sao chép thành công');
//     }
//   }
// }

// Vibrate
// Future<void> onVibrate() async {
//   if (await Vibration.hasVibrator()) {
//     Vibration.vibrate(duration: 50, amplitude: 128);
//   }
// }

// Open the google map
// Future<void> openGoogleMap(
//   BuildContext context, {
//   required double latitude,
//   required double longtitude,
// }) async {
//   try {
//     final Uri googleMapUrl = Uri.parse(
//       'https://www.google.com/maps/search/?api=1&query=$latitude,$longtitude',
//     );

//     if (await canLaunchUrl(googleMapUrl)) {
//       await launchUrl(googleMapUrl);
//     } else {
//       if (context.mounted) {
//         showAppToast(
//           context,
//           des: 'Mở bản đồ thất bại',
//           type: ToastificationType.error,
//         );
//       }
//     }
//   } catch (e) {
//     if (context.mounted) {
//       showAppToast(
//         context,
//         des: 'Mở bản đồ thất bại',
//         type: ToastificationType.error,
//       );
//     }
//   }
// }

// Show model bottom sheet
void openModelBottomSheet(BuildContext context, Widget child) {
  showModalBottomSheet(context: context, builder: (_) => child);
}

// Pick date
Future<DateTime?> pickDate({
  required BuildContext context,
  DateTime? initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
}) async {
  try {
    DateTime? result = await showDatePicker(
      context: context,
      locale: Localizations.localeOf(context),
      initialDate: initialDate ?? DateTime.now(),
      firstDate: firstDate ?? DateTime(DateTime.now().year - 5),
      lastDate: lastDate ?? DateTime(DateTime.now().year + 5),
      confirmText: 'Chọn',
      cancelText: 'Hủy',
      barrierDismissible: false,
    );
    return result;
  } catch (e) {
    return null;
  }
}

// Pick image
// Future<File?> _pickImage(
//   BuildContext context, {
//   ImageSource imageSource = ImageSource.gallery,
// }) async {
//   try {
//     final ImagePicker picker = ImagePicker();
//     XFile? pickedFile;

//     if (imageSource == ImageSource.gallery) {
//       // Pick an image.
//       pickedFile = await picker.pickImage(source: ImageSource.gallery);
//     } else {
//       // Capture a photo.
//       pickedFile = await picker.pickImage(source: ImageSource.camera);
//     }
//     if (pickedFile == null) {
//       return null;
//     }
//     return File(pickedFile.path);
//   } catch (e) {
//     return null;
//   }
// }

// Future<dynamic> onPickImage(
//   BuildContext context, {
//   required void Function(File file) pickFromLibrary,
//   required void Function(File file) pickFromCamera,
// }) {
//   return showModalBottomSheet(
//     context: context,
//     builder: (context) => CustomPickImageDialog(
//       onPickFromLibrary: () async {
//         final result = await _pickImage(context);
//         if (result != null && context.mounted) {
//           context.pop();
//           pickFromLibrary(result);
//         }
//       },
//       onTakenFromCamera: () async {
//         final result = await _pickImage(
//           context,
//           imageSource: ImageSource.camera,
//         );
//         if (result != null && context.mounted) {
//           context.pop();
//           pickFromCamera(result);
//         }
//       },
//     ),
//   );
// }

// Send SMS
// Future<void> sendSMS(
//   BuildContext context, {
//   required String phoneNumber,
//   required String message,
// }) async {
//   try {
//     final Uri smsUrl = Uri(
//       scheme: 'sms',
//       path: phoneNumber,
//       queryParameters: {'body': message},
//     );
//     if (await canLaunchUrl(smsUrl)) {
//       await launchUrl(smsUrl);
//     } else {
//       if (context.mounted) {
//         showAppToast(
//           context,
//           des: 'Gửi tin nhắn thất bại',
//           type: ToastificationType.error,
//         );
//       }
//     }
//   } catch (e) {
//     if (context.mounted) {
//       if (context.mounted) {
//         showAppToast(
//           context,
//           des: 'Gửi tin nhắn thất bại',
//           type: ToastificationType.error,
//         );
//       }
//     }
//   }
// }

// Show app loading
void showAppLoading(BuildContext context, {double? size}) async {
  sl<DialogObserverBloc>().add(const OpenTheDialog());
  await showGeneralDialog(
    context: context,
    barrierLabel: "loading",
    barrierColor: Colors.black87,
    pageBuilder: (context, _, __) => LoadingAnimationWidget.dotsTriangle(
      color: const Color(0xFFFBB355),
      size: size ?? 50.sp,
    ),
  ).then((_) => sl<DialogObserverBloc>().add(const CloseTheDialog()));
}

// Show app dialog
Future<void> showAppDialog(
  BuildContext context, {
  required String title,
  required String content,
  DialogType type = DialogType.okCancel,
  VoidCallback? onCancel,
  VoidCallback? onConfirm,
  String? cancelText,
  String? confirmText,
  Color? cancelColor,
  Color? confirmColor,
}) async {
  sl<DialogObserverBloc>().add(const OpenTheDialog());
  await showAdaptiveDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => PopScope(
      canPop: false,
      child: Visibility(
        visible: type == DialogType.ok,
        replacement: CustomOkCancelDialog(
          title: title,
          content: content,
          cancelColor: cancelColor,
          cancelText: cancelText,
          confirmColor: confirmColor,
          confirmText: confirmText,
          onCancel: onCancel,
          onConfirm: onConfirm,
        ),
        child: CustomOkDialog(
          title: title,
          content: content,
          confirmColor: confirmColor,
          confirmText: confirmText,
          onConfirm: onConfirm,
        ),
      ),
    ),
  ).then((_) => sl<DialogObserverBloc>().add(const CloseTheDialog()));
}

// Show app developing dialog
Future<void> showDevelopingDialog(
  BuildContext context, {
  VoidCallback? onConfirm,
  String? confirmText,
  Color? confirmColor,
}) async {
  sl<DialogObserverBloc>().add(const OpenTheDialog());
  await showAdaptiveDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => PopScope(
      canPop: false,
      child: CustomOkDialog(
        title: 'Thông báo',
        content: 'Tính năng đang phát triển',
        confirmColor: confirmColor,
        confirmText: confirmText,
        onConfirm: onConfirm,
      ),
    ),
  ).then((_) => sl<DialogObserverBloc>().add(const CloseTheDialog()));
}

// Show app toast
// void showAppToast(
//   BuildContext context, {
//   String title = 'Thông báo',
//   String des = 'Thông báo',
//   ToastificationType type = ToastificationType.success,
// }) {
//   toastification.show(
//     context: context,
//     type: type,
//     style: ToastificationStyle.minimal,
//     title: Text(title),
//     description: Text(des),
//     alignment: Alignment.topLeft,
//     autoCloseDuration: const Duration(seconds: 2),
//     borderRadius: BorderRadius.circular(12.r),
//     showProgressBar: true,
//     dragToClose: true,
//   );
// }

// Logout
// void onLogout(BuildContext context) async {
//   await showAppDialog(
//     context,
//     title: 'Đăng xuất',
//     content: 'Bạn muốn đăng xuất',
//     onConfirm: () async {
//       // final languageCode = sl<SharedPrefsService>().getString(SharedPrefsKey.lang);
//       // sl<SharedPrefsService>().clearLocalData();
//       await resetDi();
//       if (context.mounted) {
//         // Resave language code
//         // sl<SharedPrefsService>().saveString(
//         //   SharedPrefsKey.lang,
//         //   languageCode ?? 'vi',
//         // );
//         // sl<LanguageBloc>().add(
//         //   SelectLanguage(locale: Locale(languageCode ?? 'vi')),
//         // );

//         // Navigate to the login page
//         context.go('/auth/login');
//       }
//     },
//   );
// }
