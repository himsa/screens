import 'package:get/get.dart';

import 'package:screens/app/modules/history/bindings/history_binding.dart';
import 'package:screens/app/modules/history/views/history_view.dart';
import 'package:screens/app/modules/home/bindings/home_binding.dart';
import 'package:screens/app/modules/home/views/home_view.dart';
import 'package:screens/app/modules/map/bindings/map_binding.dart';
import 'package:screens/app/modules/map/views/map_view.dart';
import 'package:screens/app/modules/profile/bindings/profile_binding.dart';
import 'package:screens/app/modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MAP,
      page: () => MapView(),
      binding: MapBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => HistoryView(),
      binding: HistoryBinding(),
    ),
  ];
}
