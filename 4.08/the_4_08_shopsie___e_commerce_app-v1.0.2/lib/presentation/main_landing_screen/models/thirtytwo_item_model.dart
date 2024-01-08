import '../../../core/app_export.dart';

/// This class is used in the [thirtytwo_item_widget] screen.
class ThirtytwoItemModel {
  ThirtytwoItemModel({
    this.outerwear,
    this.outerwear1,
    this.raincoatsSweaters,
    this.id,
  }) {
    outerwear = outerwear ?? Rx(ImageConstant.imgRectangle7);
    outerwear1 = outerwear1 ?? Rx("Outerwear");
    raincoatsSweaters = raincoatsSweaters ?? Rx("Raincoats, sweaters, etc.");
    id = id ?? Rx("");
  }

  Rx<String>? outerwear;

  Rx<String>? outerwear1;

  Rx<String>? raincoatsSweaters;

  Rx<String>? id;
}
