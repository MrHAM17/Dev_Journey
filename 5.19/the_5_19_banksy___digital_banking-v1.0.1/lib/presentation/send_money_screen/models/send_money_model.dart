import '../../../core/app_export.dart';
import 'profilelist_item_model.dart';
import 'nineteen_item_model.dart';
import 'twentytwo_item_model.dart';

class SendMoneyModel {
  List<ProfilelistItemModel> profilelistItemList = [
    ProfilelistItemModel(ellipse: ImageConstant.imgEllipse11),
    ProfilelistItemModel(ellipse: ImageConstant.imgEllipse9),
    ProfilelistItemModel(ellipse: ImageConstant.imgEllipse8),
    ProfilelistItemModel(ellipse: ImageConstant.imgEllipse7),
    ProfilelistItemModel(ellipse: ImageConstant.imgEllipse10)
  ];

  List<NineteenItemModel> nineteenItemList = [
    NineteenItemModel(
        angelinaDruff: ImageConstant.imgOval,
        jenningsChamplin: "Angelina Druff",
        jenningsChamplin1: "AC : 159-107-1396",
        angelinaDruff1: ImageConstant.imgCheckmarkTeal300),
    NineteenItemModel(
        angelinaDruff: ImageConstant.imgOval48x48,
        jenningsChamplin: "Angelina Lan",
        jenningsChamplin1: "AC : 159-107-1396",
        angelinaDruff1: ImageConstant.imgCheckmarkGray400)
  ];

  List<TwentytwoItemModel> twentytwoItemList = [
    TwentytwoItemModel(
        belgeman: ImageConstant.imgOval1,
        jenningsChamplin: "Belgeman",
        jenningsChamplin1: "AC : 159-107-1396"),
    TwentytwoItemModel(
        belgeman: ImageConstant.imgOval2,
        jenningsChamplin: "Brusly",
        jenningsChamplin1: "AC : 159-107-1396"),
    TwentytwoItemModel(
        belgeman: ImageConstant.imgOval3,
        jenningsChamplin: "Baminu",
        jenningsChamplin1: "AC : 159-107-1396")
  ];
}
