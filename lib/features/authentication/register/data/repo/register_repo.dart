import 'package:washit_project/core/networking/api_constants.dart';
import 'package:washit_project/core/networking/api_result.dart';
import 'package:washit_project/features/authentication/register/data/models/register_request.dart';

import '../../../../../core/networking/api_services.dart';
import '../models/register_response.dart';

class RegisterRepo {
  final ApiServices apiServices;

  RegisterRepo(this.apiServices);

  Future<ApiResult<RegisterResponse>> registerUser(
      RegisterRequest registerRequest) async {
    try {
      final response = await apiServices.postData(
        url: ApiConstants.register,
        data: registerRequest.toJson(),
      );
      return ApiResult.success(RegisterResponse.fromJson(response.data));
    } catch (e) {
      if (e.toString().contains('email already exists')) {
        return ApiResult.error(
          'Email already exists. Please use a different email.',
        );
      } else {
        return ApiResult.error(e.toString());
      }
    }
  }
}
