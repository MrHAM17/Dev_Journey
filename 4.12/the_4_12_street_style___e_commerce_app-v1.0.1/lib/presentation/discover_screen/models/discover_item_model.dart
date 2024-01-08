import '../../../core/app_export.dart';

/// This class is used in the [discover_item_widget] screen.
class DiscoverItemModel {
  DiscoverItemModel({
    this.shirtSleeve,
    this.id,
  }) {
    shirtSleeve = shirtSleeve ?? Rx(ImageConstant.imgImage2);
    id = id ?? Rx("");
  }

  Rx<String>? shirtSleeve;

  Rx<String>? id;
}
