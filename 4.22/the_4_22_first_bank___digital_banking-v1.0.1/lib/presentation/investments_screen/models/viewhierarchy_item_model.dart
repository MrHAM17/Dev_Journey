import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.closeImage,
    this.appleStoreText,
    this.ecommerceText,
    this.sixteenText,
    this.id,
  }) {
    closeImage = closeImage ?? Rx(ImageConstant.imgClose);
    appleStoreText = appleStoreText ?? Rx("Apple Store");
    ecommerceText = ecommerceText ?? Rx("E-commerce, Marketplace");
    sixteenText = sixteenText ?? Rx("+16%");
    id = id ?? Rx("");
  }

  Rx<String>? closeImage;

  Rx<String>? appleStoreText;

  Rx<String>? ecommerceText;

  Rx<String>? sixteenText;

  Rx<String>? id;
}
