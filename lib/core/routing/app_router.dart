import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_wash/core/di/dependency_injection.dart';
import 'package:car_wash/core/routing/routes.dart';
import 'package:car_wash/cubits/layout_cubit/layout_cubit.dart';
import 'package:car_wash/features/authentication/register/presentation/cubit/profile_cubit.dart';
import 'package:car_wash/features/authentication/register/presentation/cubit/register_cubit.dart';
import 'package:car_wash/features/authentication/register/presentation/pages/complete_profile_page.dart';
import 'package:car_wash/features/authentication/register/presentation/pages/register_page.dart';
import 'package:car_wash/features/authentication/verification/presentation/pages/password_verification_page.dart';
import 'package:car_wash/features/layout/presentation/layout.dart';
import '../../features/authentication/verification/presentation/cubit/verification_cubit.dart';
import '../../features/authentication/verification/presentation/pages/new_password_page.dart';
import '../../features/authentication/verification/presentation/pages/reset_password_page.dart';
import '../../features/authentication/verification/presentation/pages/verification_page.dart';
import '../../screens/Login.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => const Login(),
        );
      case Routes.layout:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LayoutCubit(),
            child: Layout(),
          ),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: const RegisterPage(),
          ),
        );
      case Routes.passwordVerification:
        return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
                    providers: [
                      BlocProvider(
                          create: (context) => getIt<VerificationCubit>()),
                    ],
                    child: PasswordVerificationPage(
                      email: settings.arguments as String,
                    )));
      case Routes.verification:
        return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
                    providers: [
                      BlocProvider(
                          create: (context) => getIt<VerificationCubit>()),
                    ],
                    child: VerificationPage(
                      email: settings.arguments as String,
                    )));
      case Routes.completeProfile:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => getIt<ProfileCubit>(),
                child: const CompleteProfilePage()));
      case Routes.resetPassword:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => getIt<VerificationCubit>(),
                child: const ResetPasswordPage()));
      case Routes.newPassword:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => getIt<VerificationCubit>(),
                child: const NewPasswordPage(
                    // email: (settings.arguments as Map)['email'] as String,
                    // verificationCode:
                    //    (settings.arguments as Map)['otp'] as String,
                    )));
      default:
        return null;
    }
  }
}
