import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:personal_template/routes/app_routes.dart';
import 'package:personal_template/routes/app_routes_file.dart';
import 'package:personal_template/services/storage_services/get_storage_services.dart';
import 'package:personal_template/core/localization/app_translations.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  // Load saved locale if any
  final storageServices = StorageServices.instance;
  String language = storageServices.getLanguage() ?? 'en_US'; 
  Locale savedLocale = Locale(language.split('_')[0], language.split('_').length > 1 ? language.split('_')[1] : '');

  runApp(MyApp(savedLocale: savedLocale));
}

class MyApp extends StatelessWidget {

  final Locale savedLocale;
  const MyApp({super.key, required this.savedLocale});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: AppTranslations(),
        locale: savedLocale,
        fallbackLocale: const Locale('en', 'US'),
        initialRoute: AppRoutes.splashScreen,
        getPages: AppRoutesFile.routes,
        /// Smooth fade transition globally
        defaultTransition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 400),

        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
      ),
    );
  }
}
