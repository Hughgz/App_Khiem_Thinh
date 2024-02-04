import 'controller/page_container_controller.dart';
import 'package:app_kiem_thinh/core/app_export.dart';
import 'package:app_kiem_thinh/presentation/k0_page/k0_page.dart';
import 'package:app_kiem_thinh/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class PageContainerScreen extends GetWidget<PageContainerController> {
  const PageContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.k0Page,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.k0Page;
      case BottomBarEnum.Dictionary:
        return "/";
      case BottomBarEnum.Camera:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.k0Page:
        return K0Page();
      default:
        return DefaultWidget();
    }
  }
}
