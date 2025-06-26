// ignore_for_file: library_private_types_in_public_api
import '../../utils/typedefs/type_defs.dart';

class ResponseModel<T> {
  final _ResponseHeadersModel headers;
  final T body;

  const ResponseModel({required this.headers, required this.body});

  factory ResponseModel.fromJson(JSON json) {
    return ResponseModel(headers: _ResponseHeadersModel.fromJson(json['headers'] as JSON), body: json['body'] as T);
  }
}

class _ResponseHeadersModel {
  final bool error;
  final String message;
  final String? code;

  const _ResponseHeadersModel({required this.error, required this.message, this.code});

  // Handle this based on your API's response structure
  // This is a simple example, you might need to adjust it based on your API's response structure
  factory _ResponseHeadersModel.fromJson(JSON json) {
    return _ResponseHeadersModel(error: json['error'], message: json['message'] as String, code: json['code'] as String?);
  }
}
