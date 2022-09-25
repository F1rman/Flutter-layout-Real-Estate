import 'package:buildings/saved/saved_view.dart';
import 'package:get/get.dart';

import '../home/home_view.dart';
import '../splash/splash.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(name: Routes.splash, page: () => const Splash()),
    GetPage(name: Routes.home, page: () => HomeView()),
    GetPage(name: Routes.saved, page: () => const SavedView()),
  ];
}
