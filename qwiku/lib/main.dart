import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// Theme
import 'package:qwiku/app/core/theme/app_theme.dart';

// Views
import 'package:qwiku/app/routes/app_pages.dart';

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
      getPages: AppPages.routes,
    );
  }
}
