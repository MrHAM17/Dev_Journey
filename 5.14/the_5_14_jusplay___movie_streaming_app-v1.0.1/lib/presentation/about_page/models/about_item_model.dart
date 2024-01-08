import '../../../core/app_export.dart';

/// This class is used in the [about_item_widget] screen.
class AboutItemModel {
  AboutItemModel({
    this.menaMassoud,
    this.menaMassoud1,
    this.id,
  }) {
    menaMassoud = menaMassoud ?? ImageConstant.imgRectangle12050;
    menaMassoud1 = menaMassoud1 ?? "Mena Massoud";
    id = id ?? "";
  }

  String? menaMassoud;

  String? menaMassoud1;

  String? id;
}
