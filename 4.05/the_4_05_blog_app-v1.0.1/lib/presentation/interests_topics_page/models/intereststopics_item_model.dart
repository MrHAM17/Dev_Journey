import '../../../core/app_export.dart';

/// This class is used in the [intereststopics_item_widget] screen.
class IntereststopicsItemModel {
  IntereststopicsItemModel({
    this.easyToUse,
    this.id,
  }) {
    easyToUse = easyToUse ?? Rx("Art");
    id = id ?? Rx("");
  }

  Rx<String>? easyToUse;

  Rx<String>? id;
}
