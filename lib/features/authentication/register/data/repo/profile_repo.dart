import 'package:washit_project/core/networking/api_result.dart';
import 'package:washit_project/core/networking/api_services.dart';
import 'package:washit_project/features/authentication/register/data/models/profile_response.dart';

import '../../../../../core/helpers/shared_preferences_helper.dart';
import '../../../../../core/networking/api_constants.dart';
import '../models/profile_request.dart';

class ProfileRepo {
  ApiServices apiServices;
  ProfileRepo(this.apiServices);
  Future <ApiResult<ProfileResponse>> completeProfile(ProfileRequest profileRequest) async {
    try {
      final response = await apiServices.putData(
        url: ApiConstants.completeProfile,
        data: profileRequest.toJson(),
        authToken: await SharedPreferencesHelper.getAuthToken(),
      );
      
      return ApiResult.success(ProfileResponse.fromJson(response.data));
    } catch (e) {
      return ApiResult.error('Failed to update profile: $e');
    }
  }
}