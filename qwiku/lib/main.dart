import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// Theme
import 'package:qwiku/app/core/theme/app_theme.dart';

// Views
import 'package:qwiku/app/modules/splash/views/splash_view.dart';
import 'package:qwiku/app/modules/home/views/home_view.dart';
import 'package:qwiku/app/modules/admin/views/admin_view.dart';

QwikUCustomTheme customTheme = QwikUCustomTheme(isDark: false);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(QwikUApp());
}

class QwikUApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(primaryColor: Color(0xFF11A70C)),
      defaultTransition: Transition.fade,
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => SplashView()),
        GetPage(name: '/home', page: () => HomeView()),
        GetPage(name: '/admin', page: () => AdminView()),
      ],
    );
  }
}
