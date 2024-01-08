import '../../../core/app_export.dart';
import 'specials7_item_model.dart';
import 'exploreeight_item_model.dart';

class ExploreEightModel {
  List<Specials7ItemModel> specials7ItemList = [
    Specials7ItemModel(
        drama: ImageConstant.imgThumbnailImage60x90, drama1: "Drama"),
    Specials7ItemModel(
        drama: ImageConstant.imgThumbnailImage14, drama1: "Action"),
    Specials7ItemModel(
        drama: ImageConstant.imgThumbnailImage15, drama1: "Thriller"),
    Specials7ItemModel(
        drama: ImageConstant.imgThumbnailImage16, drama1: "Drama")
  ];

  List<ExploreeightItemModel> exploreeightItemList = [
    ExploreeightItemModel(
        io: ImageConstant.imgThumbnailImage180x120,
        title: "IO",
        title1: "No Christmas For You"),
    ExploreeightItemModel(
        io: ImageConstant.imgThumbnailImage7,
        title: "I Kill Giants",
        title1: "As long we fight back, we have…"),
    ExploreeightItemModel(
        io: ImageConstant.imgThumbnailImage9,
        title: "Angel has Fallen",
        title1: "Sub-Title"),
    ExploreeightItemModel(
        io: ImageConstant.imgThumbnailImage12,
        title: "Title",
        title1: "As long we fight …")
  ];
}
