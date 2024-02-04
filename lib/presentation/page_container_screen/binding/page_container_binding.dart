import '../controller/page_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PageContainerScreen.
///
/// This class ensures that the PageContainerController is created when the
/// PageContainerScreen is first loaded.
class PageContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageContainerController());
  }
}
