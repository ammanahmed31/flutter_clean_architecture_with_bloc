import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';

import '../../utils/logger/logger.dart';

/// A class that intercepts network requests for logging purposes only. This is
/// the second interceptor in case of both request and response.
///
/// ** This interceptor doesn't modify the request or response in any way. And
/// only works in `debug` mode **
class LoggingInterceptor extends Interceptor {
  /// This method intercepts an out-going request before it reaches the
  /// destination.
  ///
  /// [options] contains http request information and configuration.
  /// [handler] is used to forward, resolve, or reject requests.
  ///
  /// This method is used to log details of all out going requests, then pass
  /// it on after that. It may again be intercepted if there are any
  /// after it. If none, it is passed to [Dio].
  ///
  /// The [RequestInterceptorHandler] in each method controls the what will
  /// happen to the intercepted request. It has 3 possible options:
  ///
  /// - [handler.next]/[super.onRequest], if you want to forward the request.
  /// - [handler.resolve]/[super.onResponse], if you want to resolve the
  /// request with your custom [Response]. All ** request ** interceptors are ignored.
  /// - [handler.reject]/[super.onError], if you want to fail the request
  /// with your custom [DioException].
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final httpMethod = options.method.toUpperCase();
    final url = options.baseUrl + options.path;

    Log.o('<-- REQUEST[$httpMethod] => URL: $url');
    Log.o('\tHeaders:');
    options.headers.forEach((k, Object? v) => Log.o('\t\t$k: $v'));
    if (options.queryParameters.isNotEmpty) {
      Log.o('\tqueryParams:');
      options.queryParameters.forEach((k, Object? v) => Log.o('\t\t$k: $v'));
    }
    if (options.data != null) {
      Log.o('\tBody: ${options.data}');
    }
    Log.o('--> END[$httpMethod]');
    return super.onRequest(options, handler);
  }

  /// This method intercepts an incoming response before it reaches Dio.
  ///
  /// [response] contains http [Response] info.
  /// [handler] is used to forward, resolve, or reject responses.
  ///
  /// This method is used to log all details of incoming responses, then pass
  /// it on after that. It may again be intercepted if there are any
  /// after it. If none, it is passed to [Dio].
  ///
  /// The [RequestInterceptorHandler] in each method controls the what will
  /// happen to the intercepted response. It has 3 possible options:
  ///
  /// - [handler.next]/[super.onRequest], if you want to forward the [Response].
  /// - [handler.resolve]/[super.onResponse], if you want to resolve the
  /// [Response] with your custom data. All ** response ** interceptors are ignored.
  /// - [handler.reject]/[super.onError], if you want to fail the response
  /// with your custom [DioException].
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Log.o('<-- RESPONSE[${response.statusCode}] => URL: ${response.requestOptions.path}');
    if (response.statusCode == 304) {
      Log.o('\tSource: Cache');
    } else {
      Log.o('\tSource: Network');
    }
    Log.o('\tResponse Data: ${response.data}');
    Log.o('<-- END HTTP');
    return super.onResponse(response, handler);
  }

  /// This method intercepts any exceptions thrown by Dio, or passed from a
  /// previous interceptor.
  ///
  /// [dioError] contains error info when the request failed.
  /// [handler] is used to forward, resolve, or reject errors.
  ///
  /// This method is used to log all details of the error arising due to the
  /// failed request, then pass it on after that. It may again be intercepted
  /// if there are any after it. If none, it is passed to [Dio].
  ///
  /// ** The structure of response in case of errors is dependant on the API and
  /// may not always be the same. It might need changing according to your
  /// own API. **
  ///
  /// The [RequestInterceptorHandler] in each method controls the what will
  /// happen to the intercepted error. It has 3 possible options:
  ///
  /// - [handler.next]/[super.onRequest], if you want to forward the [Response].
  /// - [handler.resolve]/[super.onResponse], if you want to resolve the
  /// [Response] with your custom data. All ** error ** interceptors are ignored.
  /// - [handler.reject]/[super.onError], if you want to fail the response
  /// with your custom [DioException].
  @override
  void onError(DioException dioError, ErrorInterceptorHandler handler) {
    Log.o('--> ERROR');
    final httpMethod = dioError.requestOptions.method.toUpperCase();
    final url = dioError.requestOptions.baseUrl + dioError.requestOptions.path;

    Log.o('\tMETHOD: $httpMethod');

    Log.o('\tURL: $url');
    if (dioError.response != null) {
      Log.o('\tStatus code: ${dioError.response!.statusCode}');
      if (dioError.response!.data != null) {
        final headers = dioError.response!.data['headers'] /* as JSON */; //API Dependant
        final message = headers['message'] as String; //API Dependant
        final code = headers['code'] as String; //API Dependant
        Log.o('\tException: $code');

        Log.o('\tMessage: $message');
        debugPrint('\tMessage: $message');
        if (headers.containsKey('data')) {
          //API Dependant
          final data = headers['data'] as List<Object?>;
          if (data.isNotEmpty) {
            Log.o('\tData: $data');
            debugPrint('\tData: $data');
          }
        }
      } else {
        Log.o('${dioError.response!.data}');
      }
    } else if (dioError.error is SocketException) {
      const message = 'No internet connectivity';
      Log.o('\tException: FetchDataException');
      Log.o('\tMessage: $message');
    } else {
      Log.o('\tUnknown Error');
    }
    Log.o('<-- END ERROR');

    return super.onError(dioError, handler);
  }
}
