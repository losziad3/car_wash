import 'package:washit_project/core/networking/api_services.dart';
import 'package:washit_project/core/helpers/shared_preferences_helper.dart';
import '../../../../../core/networking/api_constants.dart';
import 'package:washit_project/core/networking/api_result.dart';

import '../models/activate_request.dart';
import '../models/activate_response.dart';

class ActivateRepo {
  final ApiServices apiServices;
  ActivateRepo(this.apiServices);

  Future<ApiResult<ActivateResponse>> activate(ActivateRequest activateRequest) async {
    try {
      final response = await apiServices.postData(
        url: ApiConstants.activate,
        data: activateRequest.toJson(),
        authToken: await SharedPreferencesHelper.getAuthToken(),
      );

      if(response.statusCode == 200) {
        String? refreshToken = response.data['refreshToken'];
        await SharedPreferencesHelper.setRefreshToken(refreshToken ?? "");
      }
      return ApiResult.success(ActivateResponse.fromJson(response.data,)..statusCode = response.statusCode);
    } catch (e) {
      throw Exception('Failed to activate: $e');
    }
  }
}
