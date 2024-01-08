import '../../../core/app_export.dart';
import 'favorite_item_model.dart';

class FavoriteModel {
  List<FavoriteItemModel> favoriteItemList = [
    FavoriteItemModel(boxTee: ImageConstant.imgRectangle12, boxTee1: "Box Tee"),
    FavoriteItemModel(
        boxTee: ImageConstant.imgRectangle12180x175, boxTee1: "Boyfriend Tee"),
    FavoriteItemModel(
        boxTee: ImageConstant.imgRectangle121, boxTee1: "Box Tee"),
    FavoriteItemModel(
        boxTee: ImageConstant.imgRectangle122, boxTee1: "Boyfriend Tee")
  ];
}
