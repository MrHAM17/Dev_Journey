import '../../../core/app_export.dart';
import 'profilelist1_item_model.dart';
import 'fortytwo_item_model.dart';
import 'thirtyseven_item_model.dart';

class MobilePrepaidOneModel {
  List<Profilelist1ItemModel> profilelist1ItemList = [
    Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse11),
    Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse9),
    Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse8),
    Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse7),
    Profilelist1ItemModel(ellipse: ImageConstant.imgEllipse10)
  ];

  List<FortytwoItemModel> fortytwoItemList = [
    FortytwoItemModel(
        angelinaDruff: ImageConstant.imgOval,
        jenningsChamplin: "Angelina Druff",
        jenningsChamplin1: "AC : 159-107-1396",
        angelinaDruff1: ImageConstant.imgCheckmarkTeal300),
    FortytwoItemModel(
        angelinaDruff: ImageConstant.imgOval48x48,
        jenningsChamplin: "Angelina Lan",
        jenningsChamplin1: "AC : 159-107-1396",
        angelinaDruff1: ImageConstant.imgCheckmarkGray400)
  ];

  List<ThirtysevenItemModel> thirtysevenItemList = [
    ThirtysevenItemModel(
        belgeman: ImageConstant.imgOval1,
        jenningsChamplin: "Belgeman",
        jenningsChamplin1: "AC : 159-107-1396"),
    ThirtysevenItemModel(
        belgeman: ImageConstant.imgOval2,
        jenningsChamplin: "Brusly",
        jenningsChamplin1: "AC : 159-107-1396")
  ];
}
