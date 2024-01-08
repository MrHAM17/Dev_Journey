import '../../../core/app_export.dart';
import 'favorite_item_model.dart';

/// This class defines the variables used in the [favorite_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FavoriteModel {
  Rx<List<FavoriteItemModel>> favoriteItemList = Rx([
    FavoriteItemModel(
        boxTee: ImageConstant.imgRectangle12.obs, boxTee1: "Box Tee".obs),
    FavoriteItemModel(
        boxTee: ImageConstant.imgRectangle12180x175.obs,
        boxTee1: "Boyfriend Tee".obs),
    FavoriteItemModel(
        boxTee: ImageConstant.imgRectangle121.obs, boxTee1: "Box Tee".obs),
    FavoriteItemModel(
        boxTee: ImageConstant.imgRectangle122.obs, boxTee1: "Boyfriend Tee".obs)
  ]);
}
