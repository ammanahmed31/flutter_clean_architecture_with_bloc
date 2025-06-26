// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';

import '../../utils/typedefs/type_defs.dart';

/// A class that holds intercepting logic for refreshing expired tokens. This
/// is the last interceptor in the queue.
class RefreshTokenInterceptor extends Interceptor {
  /// An instance of [Dio] for network requests
  final Dio _dio;

  RefreshTokenInterceptor({required Dio dioClient}) : _dio = dioClient;

  /// The name of the exception on which this interceptor is triggered.
  // ignore: non_constant_identifier_names
  String get tokenExpiredException => 'TokenExpiredException';

  /// This method is used to send a refresh token request if the error
  /// indicates an expired token.
  ///
  /// In case of expired token, it creates a new [Dio] instance, replicates
  /// its options and locks the current instance to prevent further requests.
  /// The new instance retrieves a new token and updates it. The original
  /// request is retried with the new token.
  ///
  /// ** NOTE: ** Any requests from original instance will trigger all attached
  /// interceptors as expected.
  ///
  /// ** The structure of response in case of errors or the refresh request is
  /// dependant on the API and may not always be the same. It might need
  /// changing according to your own API. **
  @override
  Future<void> onError(DioError dioError, ErrorInterceptorHandler handler) async {
    if (dioError.response != null) {
      if (dioError.response!.data != null) {
        final headers = dioError.response!.data['headers'] as JSON;

        // Check error type to be token expired error
        final code = headers['code'] as String;
        if (code == tokenExpiredException) {
          _dio.close();
          // handle token expired error
        }
      }
    }

    // if not token expired error, forward it to try catch in dio_service
    return super.onError(dioError, handler);
  }

  /// This method sends out a request to refresh the token. Since this request
  /// uses the new [Dio] instance it needs its own logging and error handling.
  ///
  /// ** The structure of response is dependant on the API and may not always
  /// be the same. It might need changing according to your own API. **
  // Future<String?> _refreshTokenRequest({required DioError dioError, required ErrorInterceptorHandler handler, required Dio tokenDio, required JSON data}) async {
  //   // implement your logic to refresh the token here
  //   return '';
  // }
}
