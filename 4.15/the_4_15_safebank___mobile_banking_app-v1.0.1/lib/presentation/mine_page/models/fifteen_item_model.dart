import '../../../core/app_export.dart';

/// This class is used in the [fifteen_item_widget] screen.
class FifteenItemModel {
  FifteenItemModel({
    this.vector,
    this.appleStore,
    this.june,
    this.price,
    this.id,
  }) {
    vector = vector ?? Rx(ImageConstant.imgVector);
    appleStore = appleStore ?? Rx("Apple Store");
    june = june ?? Rx("21 June, 2022");
    price = price ?? Rx("-220.00");
    id = id ?? Rx("");
  }

  Rx<String>? vector;

  Rx<String>? appleStore;

  Rx<String>? june;

  Rx<String>? price;

  Rx<String>? id;
}
