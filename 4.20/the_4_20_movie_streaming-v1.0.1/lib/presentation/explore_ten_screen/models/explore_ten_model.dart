import '../../../core/app_export.dart';
import 'trending_item_model.dart';
import 'trending1_item_model.dart';
import 'trending2_item_model.dart';

/// This class defines the variables used in the [explore_ten_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreTenModel {
  Rx<List<TrendingItemModel>> trendingItemList = Rx([
    TrendingItemModel(
        darkPhoenix: ImageConstant.imgThumbnailImage12.obs,
        title: "Dark Phoenix".obs,
        subLabel: "Sub Label".obs,
        star: "(4.5)".obs),
    TrendingItemModel(
        darkPhoenix: ImageConstant.imgThumbnailImage160x312.obs,
        title: "Label".obs)
  ]);

  Rx<List<Trending1ItemModel>> trending1ItemList = Rx([
    Trending1ItemModel(
        darkPhoenix: ImageConstant.imgThumbnailImage140x90.obs,
        title: "Dark Phoenix".obs,
        subLabel: "Sub Label".obs,
        star: "(4.5)".obs),
    Trending1ItemModel(
        darkPhoenix: ImageConstant.imgThumbnailImage160x312.obs,
        title: "Label".obs)
  ]);

  Rx<List<Trending2ItemModel>> trending2ItemList = Rx([
    Trending2ItemModel(
        darkPhoenix: ImageConstant.imgThumbnailImage31.obs,
        title: "Dark Phoenix".obs,
        subLabel: "Sub Label".obs,
        star: "(4.5)".obs),
    Trending2ItemModel(
        darkPhoenix: ImageConstant.imgThumbnailImage160x312.obs,
        title: "Label".obs)
  ]);
}
