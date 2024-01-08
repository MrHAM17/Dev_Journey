import '../../../core/app_export.dart';

/// This class is used in the [language_item_widget] screen.
class LanguageItemModel {
  LanguageItemModel({
    this.england,
    this.england1,
    this.england2,
    this.id,
  }) {
    england = england ?? ImageConstant.imgBg;
    england1 = england1 ?? "England";
    england2 = england2 ?? ImageConstant.imgCheckmarkWhiteA700;
    id = id ?? "";
  }

  String? england;

  String? england1;

  String? england2;

  String? id;
}
