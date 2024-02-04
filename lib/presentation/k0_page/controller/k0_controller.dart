import 'package:app_kiem_thinh/core/app_export.dart';
import 'package:app_kiem_thinh/presentation/k0_page/models/k0_model.dart';

/// A controller class for the K0Page.
///
/// This class manages the state of the K0Page, including the
/// current k0ModelObj
class K0Controller extends GetxController {
  K0Controller(this.k0ModelObj);

  Rx<K0Model> k0ModelObj;

  Rx<int> sliderIndex = 0.obs;
}
