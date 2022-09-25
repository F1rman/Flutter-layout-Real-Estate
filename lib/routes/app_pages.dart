import 'package:buildings/saved/saved_view.dart';
import 'package:get/get.dart';

import '../home/home_view.dart';
import '../splash/splash.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => Splash()),
    GetPage(name: Routes.HOME, page: () => HomeView()),
    GetPage(name: Routes.SAVED, page: () => SavedView()),
  ];
}
