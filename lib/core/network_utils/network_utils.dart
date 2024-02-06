import 'package:dio/dio.dart';

import '../caching_utils/caching_utils.dart';

class NetworkUtils {
  static final String _baseUrl = "https://naseby.fannyjeddah.com/api/";

  static late Dio _dio;

  static Future<void> init() async {
    _dio = Dio()..options.baseUrl = _baseUrl;
    _dio.options.validateStatus = (status) => true;
  }

  static Future<Response<dynamic>> get(String path, {Map<String, dynamic>? headers}) async {
    _dio.options.headers = {
      if(CachingUtils.isLogged)
        'Authorization': "Bearer " + (CachingUtils.token ?? ''),
    };
    if (headers != null) {
      _dio.options.headers.addAll(headers);
    }
    return await _dio.get(path);
  }

  static Future<Response<dynamic>> post(String path, {Map<String, dynamic>? data, FormData? formData, Map<String, dynamic>? headers}) async {
    _dio.options.headers = {
      if(CachingUtils.isLogged)
        'Authorization': "Bearer " + (CachingUtils.token ?? ''),
    };
    if (headers != null) {
      _dio.options.headers.addAll(headers);
    }
    return await _dio.post(path, data: formData ?? data);
  }

  static Future<Response<dynamic>> patch(String path, {Map<String, dynamic>? data, FormData? formData, Map<String, dynamic>? headers}) async {
    _dio.options.headers = {
      if(CachingUtils.isLogged)
        'Authorization': "Bearer " + (CachingUtils.token ?? ''),
    };
    if (headers != null) {
      _dio.options.headers.addAll(headers);
    }
    return await _dio.patch(path, data: formData ?? data);
  }

  static Future<Response<dynamic>> delete(String path, {Map<String, dynamic>? data, FormData? formData, Map<String, dynamic>? headers}) async {
    _dio.options.headers = {
      if(CachingUtils.isLogged)
        'Authorization': "Bearer " + (CachingUtils.token ?? ''),
    };
    if (headers != null) {
      _dio.options.headers.addAll(headers);
    }
    return await _dio.delete(path, data: formData ?? data);
  }
}
