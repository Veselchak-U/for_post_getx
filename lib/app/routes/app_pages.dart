import 'package:get/get.dart';

import 'package:generation_1/app/modules/add/bindings/add_binding.dart';
import 'package:generation_1/app/modules/add/views/add_view.dart';
import 'package:generation_1/app/modules/detail/bindings/detail_binding.dart';
import 'package:generation_1/app/modules/detail/views/detail_view.dart';
import 'package:generation_1/app/modules/home/bindings/home_binding.dart';
import 'package:generation_1/app/modules/home/views/home_view.dart';
import 'package:generation_1/app/modules/login/bindings/login_binding.dart';
import 'package:generation_1/app/modules/login/views/login_view.dart';
import 'package:generation_1/app/modules/splash/bindings/splash_binding.dart';
import 'package:generation_1/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ADD,
      page: () => AddView(),
      binding: AddBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
