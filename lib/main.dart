import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sherlar/core/app_colors/colors.dart';
import 'package:sherlar/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primaryColor: AppColors.primaryColor,
              focusColor: AppColors.primaryColor,
              colorScheme: ColorScheme.fromSwatch().copyWith(
                  secondary: AppColors.primaryColor,
                  primary: AppColors.primaryColor)),
          onGenerateRoute: (settings) => Routes.generateRoute(settings),
        );
      },
    );
  }
}
