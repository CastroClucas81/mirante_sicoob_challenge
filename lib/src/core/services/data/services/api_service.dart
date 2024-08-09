import 'package:dio/dio.dart';
import 'package:mirante_sicoob_challenge/src/core/failures/failure.dart';
import 'package:mirante_sicoob_challenge/src/core/services/domain/services/i_api_service.dart';

class ApiService implements IApiService {
  CancelToken cancelToken = CancelToken();
  late final Dio _dio;

  ApiService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: const String.fromEnvironment('baseUrl'),
        headers: {
          'ngrok-skip-browser-warning': 'true',
        },
      ),
    );
    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(seconds: 70);
  }

  @override
  Future get(
    String url, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? additionalHeader,
  }) async {
    try {
      final response = await _dio.get(
        url,
        queryParameters: queryParams,
        cancelToken: cancelToken,
        options: Options(
          contentType: Headers.jsonContentType,
          responseType: ResponseType.json,
          headers: additionalHeader,
        ),
      );

      return response.data;
    } catch (error) {
      throw ServerFailure();
    }
  }
}
