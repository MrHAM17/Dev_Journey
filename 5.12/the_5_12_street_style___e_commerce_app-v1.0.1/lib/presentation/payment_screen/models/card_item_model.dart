import '../../../core/app_export.dart';

/// This class is used in the [card_item_widget] screen.
class CardItemModel {
  CardItemModel({
    this.television,
    this.id,
  }) {
    television = television ?? ImageConstant.imgTelevision;
    id = id ?? "";
  }

  String? television;

  String? id;
}
