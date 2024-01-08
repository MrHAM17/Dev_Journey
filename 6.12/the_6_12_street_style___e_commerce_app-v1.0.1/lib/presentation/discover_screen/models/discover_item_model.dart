import '../../../core/app_export.dart';

/// This class is used in the [discover_item_widget] screen.
class DiscoverItemModel {
  DiscoverItemModel({
    this.shirtSleeve,
    this.id,
  }) {
    shirtSleeve = shirtSleeve ?? ImageConstant.imgImage2;
    id = id ?? "";
  }

  String? shirtSleeve;

  String? id;
}
