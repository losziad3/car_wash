import 'package:car_wash/core/networking/api_services.dart';
import 'package:car_wash/core/networking/api_constants.dart';
import 'package:car_wash/core/networking/api_result.dart';
import 'package:car_wash/features/authentication/verification/data/models/reset_password_response.dart';
import '../../../register/data/models/register_response.dart';
import '../models/activate_request.dart';
import '../models/new_password_request.dart';
class PasswordRepo{
  final ApiServices apiServices;
  PasswordRepo(this.apiServices);
  Future<ApiResult<RegisterResponse>> forgotPassword
      ( String email) async {
    try {
      final response = await apiServices.postData(
        url: ApiConstants.forgotPassword,
        data: {"email": email},
      );
      return ApiResult.success(RegisterResponse.fromJson(response.data));
    } catch (e) {
      return ApiResult.error('Failed to forgot password: $e');
    }
  }
  Future<ApiResult<ResetPasswordResponse>> resetPassword(ActivateRequest activateRequest) async {
    try {
      final response = await apiServices.postData(
        url: ApiConstants.activate,
        data: activateRequest.toJson(),
      );
      return ApiResult.success(ResetPasswordResponse.fromJson(response.data,)..statusCode = response.statusCode);
    } catch (e) {
      throw Exception('Failed to activate: $e');
    }
  }
  Future<ApiResult<RegisterResponse>> newPassword(NewPasswordRequest newPasswordRequest) async {
    try {
      final response = await apiServices.postData(url: ApiConstants.resetPassword,
          data: newPasswordRequest.toJson());
      return ApiResult.success(RegisterResponse.fromJson(response.data));
    } catch (e) {
      return ApiResult.error('Failed to reset password: $e');
    }
  }
}