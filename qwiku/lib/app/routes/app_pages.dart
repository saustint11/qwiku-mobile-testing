import 'package:get/get.dart';

import 'package:qwiku/app/modules/admin/bindings/admin_binding.dart';
import 'package:qwiku/app/modules/admin/views/admin_view.dart';
import 'package:qwiku/app/modules/daybuilder/bindings/daybuilder_binding.dart';
import 'package:qwiku/app/modules/daybuilder/views/daybuilder_view.dart';
import 'package:qwiku/app/modules/evaluations/bindings/evaluations_binding.dart';
import 'package:qwiku/app/modules/evaluations/views/evaluations_view.dart';
import 'package:qwiku/app/modules/home/bindings/home_binding.dart';
import 'package:qwiku/app/modules/home/views/home_view.dart';
import 'package:qwiku/app/modules/login/bindings/login_binding.dart';
import 'package:qwiku/app/modules/login/views/login_view.dart';
import 'package:qwiku/app/modules/map/bindings/map_binding.dart';
import 'package:qwiku/app/modules/map/views/map_view.dart';
import 'package:qwiku/app/modules/reports/bindings/reports_binding.dart';
import 'package:qwiku/app/modules/reports/views/reports_view.dart';
import 'package:qwiku/app/modules/school/bindings/school_binding.dart';
import 'package:qwiku/app/modules/school/views/school_view.dart';
import 'package:qwiku/app/modules/search/bindings/search_binding.dart';
import 'package:qwiku/app/modules/search/views/search_view.dart';
import 'package:qwiku/app/modules/settings/bindings/settings_binding.dart';
import 'package:qwiku/app/modules/settings/views/settings_view.dart';
import 'package:qwiku/app/modules/splash/bindings/splash_binding.dart';
import 'package:qwiku/app/modules/splash/views/splash_view.dart';
import 'package:qwiku/app/modules/upload/bindings/upload_binding.dart';
import 'package:qwiku/app/modules/upload/views/upload_view.dart';
import 'package:qwiku/app/modules/virtualboard/bindings/virtualboard_binding.dart';
import 'package:qwiku/app/modules/virtualboard/views/virtualboard_view.dart';
import 'package:qwiku/app/modules/watchlist/bindings/watchlist_binding.dart';
import 'package:qwiku/app/modules/watchlist/views/watchlist_view.dart';

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
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.EVALUATIONS,
      page: () => EvaluationsView(),
      binding: EvaluationsBinding(),
    ),
    GetPage(
      name: _Paths.WATCHLIST,
      page: () => WatchlistView(),
      binding: WatchlistBinding(),
    ),
    GetPage(
      name: _Paths.VIRTUALBOARD,
      page: () => VirtualboardView(),
      binding: VirtualboardBinding(),
    ),
    GetPage(
      name: _Paths.SCHOOL,
      page: () => SchoolView(),
      binding: SchoolBinding(),
    ),
    GetPage(
      name: _Paths.REPORTS,
      page: () => ReportsView(),
      binding: ReportsBinding(),
    ),
    GetPage(
      name: _Paths.MAP,
      page: () => MapView(),
      binding: MapBinding(),
    ),
    GetPage(
      name: _Paths.DAYBUILDER,
      page: () => DaybuilderView(),
      binding: DaybuilderBinding(),
    ),
    GetPage(
      name: _Paths.UPLOAD,
      page: () => UploadView(),
      binding: UploadBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
