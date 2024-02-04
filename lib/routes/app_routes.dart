import 'package:app_kiem_thinh/presentation/page_container_screen/page_container_screen.dart';
import 'package:app_kiem_thinh/presentation/page_container_screen/binding/page_container_binding.dart';
import 'package:app_kiem_thinh/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:app_kiem_thinh/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String k0Page = '/k0_page';

  static const String pageContainerScreen = '/page_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: pageContainerScreen,
      page: () => PageContainerScreen(),
      bindings: [
        PageContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => PageContainerScreen(),
      bindings: [
        PageContainerBinding(),
      ],
    )
  ];
}
