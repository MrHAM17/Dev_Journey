import '../../../core/app_export.dart';

/// This class is used in the [fortytwo_item_widget] screen.
class FortytwoItemModel {
  FortytwoItemModel({
    this.angelinaDruff,
    this.jenningsChamplin,
    this.jenningsChamplin1,
    this.angelinaDruff1,
    this.id,
  }) {
    angelinaDruff = angelinaDruff ?? ImageConstant.imgOval;
    jenningsChamplin = jenningsChamplin ?? "Angelina Druff";
    jenningsChamplin1 = jenningsChamplin1 ?? "AC : 159-107-1396";
    angelinaDruff1 = angelinaDruff1 ?? ImageConstant.imgCheckmarkTeal300;
    id = id ?? "";
  }

  String? angelinaDruff;

  String? jenningsChamplin;

  String? jenningsChamplin1;

  String? angelinaDruff1;

  String? id;
}
