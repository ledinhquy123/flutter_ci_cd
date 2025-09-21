// import 'dart:convert';
// import 'dart:io';
// import 'package:datgi_nv/common/models/api_res/api_res_model.dart';
// import 'package:datgi_nv/feature/order/data/models/summary_order/summary_order_model.dart';
// import 'package:flutter/foundation.dart';

// // Encodes a file to a Base64 string in an isolate
// String? _encodeFileToBase64Sync(String path) {
//   try {
//     final bytes = File(path).readAsBytesSync();
//     return base64Encode(bytes);
//   } catch (_) {
//     return null;
//   }
// }

// Future<String?> encodeFileToBase64Isolate(String? path) {
//   if (path == null) return Future.value(null);
//   return compute(_encodeFileToBase64Sync, path);
// }

// // Parses summary orders from JSON in an isolate
// List<SummaryOrderModel> _parseSummaryOrders(Map<String, dynamic> json) {
//   final parsed = ApiResModel<List<SummaryOrderModel>>.fromJson(
//     json,
//     (raw) =>
//         (raw as List<dynamic>)
//             .map((e) => SummaryOrderModel.fromJson(e as Map<String, dynamic>))
//             .toList(),
//   );
//   return parsed.data ?? <SummaryOrderModel>[];
// }

// Future<List<SummaryOrderModel>> parseSummaryOrdersIsolate(
//   Map<String, dynamic> json,
// ) {
//   return compute(_parseSummaryOrders, json);
// }
