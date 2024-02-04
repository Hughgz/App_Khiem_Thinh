import 'welcomemessage_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [k0_page],
/// and is typically used to hold data that is passed between different parts of the application.
class K0Model {
  Rx<List<WelcomemessageItemModel>> welcomemessageItemList =
      Rx(List.generate(1, (index) => WelcomemessageItemModel()));
}
