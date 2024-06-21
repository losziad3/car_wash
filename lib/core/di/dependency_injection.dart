import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:car_wash/core/networking/dio_helper.dart';
import 'package:car_wash/features/authentication/register/data/repo/profile_repo.dart';
import 'package:car_wash/features/authentication/register/data/repo/register_repo.dart';
import 'package:car_wash/features/authentication/register/presentation/cubit/profile_cubit.dart';
import 'package:car_wash/features/authentication/verification/data/repo/activate_repo.dart';
import 'package:car_wash/features/authentication/verification/data/repo/password_repo.dart';
import 'package:car_wash/features/authentication/verification/presentation/cubit/verification_cubit.dart';
import '../../features/authentication/register/presentation/cubit/register_cubit.dart';
import '../networking/api_services.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  Dio dio = DioHelper.getDio();
  getIt.registerLazySingleton <ApiServices>(() => ApiServices(dio));
  getIt.registerLazySingleton <RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));
  getIt.registerLazySingleton<ActivateRepo>(() =>ActivateRepo(getIt()));
  getIt.registerLazySingleton(() => PasswordRepo(getIt()));
  getIt.registerFactory<VerificationCubit>(() => VerificationCubit(getIt() , getIt() ));
  getIt.registerLazySingleton<ProfileRepo>(() => ProfileRepo( getIt() ));
  getIt.registerFactory(() => ProfileCubit( getIt() ));
}
