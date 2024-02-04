import 'package:app_kiem_thinh/core/app_export.dart';
import 'package:app_kiem_thinh/presentation/page_container_screen/models/page_container_model.dart';

/// A controller class for the PageContainerScreen.
///
/// This class manages the state of the PageContainerScreen, including the
/// current pageContainerModelObj
class PageContainerController extends GetxController {
  Rx<PageContainerModel> pageContainerModelObj = PageContainerModel().obs;
}
