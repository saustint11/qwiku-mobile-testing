import 'package:get/get.dart';

import 'package:qwiku/app/modules/admin/bindings/admin_binding.dart';
import 'package:qwiku/app/modules/admin/views/admin_view.dart';
import 'package:qwiku/app/modules/home/bindings/home_binding.dart';
import 'package:qwiku/app/modules/home/views/home_view.dart';
import 'package:qwiku/app/modules/splash/bindings/splash_binding.dart';
import 'package:qwiku/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN,
      page: () => AdminView(),
      binding: AdminBinding(),
    ),
  ];
}
