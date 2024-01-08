import '../../../core/app_export.dart';
import 'trending_item_model.dart';
import 'trending1_item_model.dart';
import 'trending2_item_model.dart';

class ExploreTenModel {
  List<TrendingItemModel> trendingItemList = [
    TrendingItemModel(
        darkPhoenix: ImageConstant.imgThumbnailImage12,
        title: "Dark Phoenix",
        subLabel: "Sub Label",
        star: "(4.5)"),
    TrendingItemModel(
        darkPhoenix: ImageConstant.imgThumbnailImage160x312, title: "Label")
  ];

  List<Trending1ItemModel> trending1ItemList = [
    Trending1ItemModel(
        darkPhoenix: ImageConstant.imgThumbnailImage140x90,
        title: "Dark Phoenix",
        subLabel: "Sub Label",
        star: "(4.5)"),
    Trending1ItemModel(
        darkPhoenix: ImageConstant.imgThumbnailImage160x312, title: "Label")
  ];

  List<Trending2ItemModel> trending2ItemList = [
    Trending2ItemModel(
        darkPhoenix: ImageConstant.imgThumbnailImage31,
        title: "Dark Phoenix",
        subLabel: "Sub Label",
        star: "(4.5)"),
    Trending2ItemModel(
        darkPhoenix: ImageConstant.imgThumbnailImage160x312, title: "Label")
  ];
}
