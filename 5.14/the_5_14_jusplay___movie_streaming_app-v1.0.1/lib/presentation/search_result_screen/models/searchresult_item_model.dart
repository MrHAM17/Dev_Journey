import '../../../core/app_export.dart';

/// This class is used in the [searchresult_item_widget] screen.
class SearchresultItemModel {
  SearchresultItemModel({
    this.rectangle,
    this.id,
  }) {
    rectangle = rectangle ?? ImageConstant.imgRectangle12078;
    id = id ?? "";
  }

  String? rectangle;

  String? id;
}
