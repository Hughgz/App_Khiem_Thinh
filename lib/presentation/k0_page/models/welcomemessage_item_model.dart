import '../../../core/app_export.dart';

/// This class is used in the [welcomemessage_item_widget] screen.
class WelcomemessageItemModel {
  WelcomemessageItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
