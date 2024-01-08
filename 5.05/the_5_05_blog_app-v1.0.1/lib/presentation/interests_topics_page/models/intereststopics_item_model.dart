import '../../../core/app_export.dart';

/// This class is used in the [intereststopics_item_widget] screen.
class IntereststopicsItemModel {
  IntereststopicsItemModel({
    this.easyToUse,
    this.id,
  }) {
    easyToUse = easyToUse ?? "Art";
    id = id ?? "";
  }

  String? easyToUse;

  String? id;
}
