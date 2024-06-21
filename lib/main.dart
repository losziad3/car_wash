import 'package:flutter/material.dart';
import 'package:washit_project/core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ScreenUtil.ensureScreenSize();
   await initGetIt();
  runApp(const WashIt());
}

class WashIt extends StatelessWidget {
  const WashIt({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.layout,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
//1.There is problem at verification
//2.There is problem at login
//3.There is problem at passwordVerification