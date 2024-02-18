import 'dart:io';

import 'package:al3yadah_app/core/caching_utils/caching_utils.dart';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/core/network_utils/network_utils.dart';
import 'package:al3yadah_app/widgets/snack_bar.dart';
import 'package:dio/dio.dart';

import '../helpers/utils.dart';

class AuthDatasource {
  static Future<Patient?> register({
    required String username,
    required String email,
    required String phone,
    required String password,
    required String dialCode,
  }) async {
    try {
      final response = await NetworkUtils.post(
        'sign-up',
        data: {
          'name': username,
          'phone': phone,
          'phone_code': dialCode,
          'email': email,
          'password': password,
          'device_type': Platform.isIOS ? 'ios' : 'android',
          // TODO: FCM
          'fcm_token': 'fcm_token',
        },
      );
      final success = response.data['success'] ?? false;
      if (!success) {
        showSnackBar(response.data['message'], errorMessage: true);
      } else {
        return Patient.fromJson(response.data['data']['user']);
      }
    } catch (e) {
      handleGenericException(e);
    }
    return null;
  }

  static Future<bool> login({
    required String phone,
    required String password,
    required String dialCode,
  }) async {
    try {
      final response = await NetworkUtils.post(
        'login',
        data: {
          'phone_code': dialCode,
          'phone': phone,
          'password': password,
        },
      );
      final success = response.data['success'] ?? false;
      if (success) {
        CachingUtils.cacheToken(response.data['data']['access_token']);
        CachingUtils.cacheUser(response.data['data']['user']);
      } else {
        showSnackBar(response.data['message'], errorMessage: true);
      }
      return success;
    } catch (e) {
      handleGenericException(e);
    }
    return false;
  }

  static Future<Map<String, dynamic>?> verify({required String code}) async {
    try {
      final response = await NetworkUtils.post(
        'check-code',
        data: {
          'code': code,
        },
      );
      final success = response.data['success'] ?? false;
      if (!success) {
        showSnackBar(response.data['message'], errorMessage: true);
      } else {
        return response.data['data'];
      }
    } catch (e) {
      handleGenericException(e);
    }
    return null;
  }

  static Future<void> resendCode({required String phone}) async {
    try {
      final response = await NetworkUtils.post(
        'resend-code',
        data: {
          'phone': phone,
        },
      );
      final success = response.data['success'] ?? false;
      showSnackBar(response.data['message'] ?? '', errorMessage: !success);
    } catch (e) {
      handleGenericException(e);
    }
  }

  static Future<Patient?> updateProfile({
    bool? isMale,
    String? weight,
    String? length,
    String? age,
    bool? isImagePublic,
    String? bio,
    String? partnerDescription,
    File? image,
  }) async {
    try {
      final formData = FormData.fromMap({
        if (isMale != null) 'gender': isMale ? 'male' : 'female',
        if (weight != null) 'weight': weight,
        if (length != null) 'length': length,
        if (age != null) 'age': age,
        if (isImagePublic != null) 'is_image_public': isImagePublic ? '1' : '0',
        if (partnerDescription != null) 'partner_describe': 'partner_describe',
        if (bio != null) 'bio': bio,
      });
      if (image != null)
        formData.files
            .add(MapEntry('image', await MultipartFile.fromFile(image.path)));
      final response = await NetworkUtils.post(
        'update-profile',
        formData: formData,
      );
      final success = response.data['success'] ?? false;
      showSnackBar(response.data['message'], errorMessage: !success);
      if (success) {
        return Patient.fromJson(response.data['data']['user']);
      }
    } catch (e) {
      handleGenericException(e);
    }
    return null;
  }
}
